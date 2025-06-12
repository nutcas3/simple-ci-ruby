require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    it 'requires a title' do
      post = Post.new(content: 'Valid content that is long enough')
      expect(post).not_to be_valid
      expect(post.errors[:title]).to include("can't be blank")
    end

    it 'requires content' do
      post = Post.new(title: 'Valid title')
      expect(post).not_to be_valid
      expect(post.errors[:content]).to include("can't be blank")
    end

    it 'requires content to be at least 10 characters' do
      post = Post.new(title: 'Valid title', content: 'Too short')
      expect(post).not_to be_valid
      expect(post.errors[:content]).to include('is too short (minimum is 10 characters)')
    end

    it 'is valid with valid attributes' do
      post = Post.new(title: 'Valid title', content: 'Valid content that is long enough')
      expect(post).to be_valid
    end
  end
end
