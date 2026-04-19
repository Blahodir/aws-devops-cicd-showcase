DevOps Showcase Project
FjordStep is a full-cycle DevOps project demonstrating a modern approach to infrastructure management and application deployment. 
The project features a containerized application, automated infrastructure provisioning, and a CI/CD pipeline.

🚀 Key Features
Infrastructure as Code (IaC): Automated AWS infrastructure provisioning using Terraform.
Containerization: Application packaging and environment consistency via Docker and Docker Compose.
Cloud Hosting: Deployment on AWS EC2 (Ubuntu Jammy) within a custom VPC.
Security: Infrastructure secured with custom Security Groups (SSH and HTTP isolation) and SSH key-pair authentication.
CI/CD Ready: Integrated with GitHub Actions for automated build and deployment workflows.

🛠 Tech Stack
Cloud: AWS (VPC, EC2, IGW, Subnets, Route Tables).
IaC: Terraform.
Containers: Docker, Docker Hub.
OS: Ubuntu 22.04 LTS.
Automation: GitHub Actions.

📂 Project Structure:
.
├── .github/workflows/   # CI/CD pipeline definitions
├── terraform/           # IaC: AWS Infrastructure scripts (.tf files)
├── Dockerfile           # Application containerization rules
├── docker-compose.yml   # Multi-container orchestration logic
├── .dockerignore        # Build optimization
└── package.json         # Node.js project metadata

⚙️ Infrastructure Overview
The Terraform configuration in the /terraform directory sets up:
VPC with a 10.0.0.0/16 CIDR block.
Public Subnet with automated Public IP assignment.
Internet Gateway to allow external traffic.
Security Group allowing traffic on ports 22 (SSH) and 8080 (Web).
EC2 Instance (t2.micro) with Docker pre-installed via user_data.

🔧 How to Deploy:
1. Prerequisites - / AWS Account and CLI configured / Terraform installed locally
2. Infrastructure Setup:
cd terraform
terraform init
terraform plan
terraform apply

👤 Author
Pavlo Blahodir
