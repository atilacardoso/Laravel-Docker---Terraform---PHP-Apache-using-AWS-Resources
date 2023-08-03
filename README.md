# Laravel Docker - Terraform - PHP Apache using AWS Resources

## Introduction

This project showcases the deployment of a sophisticated Laravel web application on AWS infrastructure using Docker, Terraform, PHP, and Apache. Laravel, a popular PHP framework known for its elegant syntax and developer-friendly features, empowers the web application with robust capabilities.
The primary focus of this project is to demonstrate how to build a modern, cloud-native web application with a microservices architecture on Amazon Web Services (AWS). By leveraging various AWS resources, the application achieves scalability, high availability, and seamless deployment.

## Technologies Used

- **Docker**: Docker is used to containerise the Laravel application, making it easy to deploy and manage.
- **Terraform**: Terraform is used for infrastructure as code, allowing easy provisioning of AWS resources.
- **PHP and Apache**: PHP serves as the backend language, and Apache acts as the web server for the Laravel application.
- **Laravel**: Laravel is a powerful PHP framework used for developing web application.
- **AWS Resources**: The project utilises several AWS services, including:
  - **EC2 Bastion Host**: Provides secure access to the application's infrastructure.
  - **Application Load Balancer (ALB)**: Distributes incoming traffic to containers in ECS.
  - **ECR (Elastic Container Registry)**: Stores Docker images used in the project.
  - **ECS (Elastic Container Service)**: Manages and runs Docker containers at scale.
  - **Fargate**: Serverless compute engine for running containers.
  - **S3**: Storage for backend files and assets.
  - **DynamoDB**: NoSQL database for managing application data.
  - **RDS (Relational Database Service)**: Hosts the application's relational database.
  - **CloudWatch**: For log management and monitoring of the application and infrastructure.

## Infrastructure Management

- **Terraform Backend**: The Terraform state is stored in an S3 bucket, providing state persistence and collaboration.
- **Terraform State Lock**: Terraform state is locked using DynamoDB to prevent concurrent modifications.

## Development Environment

- **VS Code**: The project is developed using Visual Studio Code, making it easier to work with the codebase efficiently.

## Prerequisites

Before using this project, ensure you have the following prerequisites installed:

- Docker and Docker Compose
- Terraform
- AWS CLI
- AWS-Vault
- Visual Studio Code (optional)

## Getting Started

Follow these steps to set up and deploy the Laravel application on AWS:

1. Clone the repository: `git clone https://github.com/your-username/your-repo.git`
2. Install Docker, Docker Compose, Terraform, AWS CLI, AWS-Vault, and optionally, Visual Studio Code.

## Contributing

Contributions to this project are welcome! If you want to contribute, please follow the guidelines in [CONTRIBUTING.md](CONTRIBUTING.md).

## License

This project is licensed under the [MIT License](LICENSE).
