# Rails CI/CD Demo

A modern Ruby on Rails application demonstrating CI/CD best practices, automated testing, and deployment workflows.

## 🚀 Features

### Application
- Basic blog functionality with posts
- Modern, responsive UI
- PostgreSQL database
- RESTful API design

### Development
- 🛠 Ruby 3.2.2 + Rails 7.1
- 📦 Docker + Docker Compose configuration
- 🧪 Comprehensive RSpec test suite
- 🎨 RuboCop for code style enforcement

### CI/CD Pipeline
- 🔄 GitHub Actions workflow
- ⚡️ Parallel test execution with Knapsack
- 🔍 Security scanning (Brakeman, Bundler Audit)
- 🚀 Automated deployments to Heroku
- 👀 Preview environments for PRs

## 🛠 Prerequisites

- Ruby 3.2.2
- PostgreSQL 14+
- Docker & Docker Compose
- Node.js 18+

## 🚀 Quick Start

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/rails-cicd-demo.git
   cd rails-cicd-demo
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Set up the database:
   ```bash
   rails db:create db:migrate
   ```

4. Start the server:
   ```bash
   rails server
   ```

5. Visit http://localhost:3000

## 🐳 Docker Setup

1. Build the containers:
   ```bash
   docker-compose build
   ```

2. Start the services:
   ```bash
   docker-compose up
   ```

3. Create and migrate the database:
   ```bash
   docker-compose exec web rails db:setup
   ```

## 🧪 Testing

Run the test suite:
```bash
rspec
```

Run specific tests:
```bash
rspec spec/models/post_spec.rb
```

## 🔄 CI/CD Pipeline

The GitHub Actions workflow includes:

1. **Lint & Security**
   - RuboCop style checking
   - Brakeman security analysis
   - Bundler Audit dependency checks

2. **Test**
   - Parallel test execution
   - Coverage reporting

3. **Build**
   - Docker image building
   - Image pushing to registry

4. **Deploy**
   - Preview environment for PRs
   - Production deployment for main branch

## 📚 Documentation

- [Setup Guide](docs/setup.md)
- [Contributing Guidelines](CONTRIBUTING.md)
- [Deployment Guide](docs/deployment.md)

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
