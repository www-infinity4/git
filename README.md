# Git Deployment Repository

A repository configured for automated deployment using Git and GitHub Actions.

## Overview

This repository provides a streamlined deployment workflow using Git hooks and GitHub Actions CI/CD pipelines. Push to the `main` branch to trigger an automatic deployment.

## Getting Started

### Prerequisites

- Git 2.x or higher
- A target server with SSH access (for server deployments)
- GitHub repository with Actions enabled

### Clone the Repository

```bash
git clone https://github.com/www-infinity4/git.git
cd git
```

### Configuration

1. Copy the example environment file and fill in your values:

```bash
cp .env.example .env
```

2. Edit `.env` with your deployment target settings:

```env
DEPLOY_HOST=your.server.com
DEPLOY_USER=deploy
DEPLOY_PATH=/var/www/app
```

## Deployment

### Automatic Deployment (GitHub Actions)

Every push to the `main` branch automatically triggers the deployment workflow defined in `.github/workflows/deploy.yml`.

To deploy manually via GitHub Actions, navigate to the **Actions** tab and run the **Deploy** workflow.

### Manual Deployment via Script

```bash
./scripts/deploy.sh
```

## Repository Structure

```
.
├── .github/
│   └── workflows/
│       └── deploy.yml      # GitHub Actions deployment workflow
├── scripts/
│   └── deploy.sh           # Manual deployment script
├── .env.example            # Example environment configuration
├── .gitignore
└── README.md
```

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/my-feature`)
3. Commit your changes (`git commit -m 'Add my feature'`)
4. Push to the branch (`git push origin feature/my-feature`)
5. Open a Pull Request

## License

MIT
<script src="https://www-infinity4.github.io/Mint-For-Infinity/infinity-wallet-menu.js" defer></script>
