# 🚀 Terraform Docker Application Deployment on AWS EC2

<p align="center">

![Terraform](https://img.shields.io/badge/Terraform-Infrastructure%20as%20Code-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-EC2-FF9900?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Ubuntu](https://img.shields.io/badge/Ubuntu-22.04-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Apache](https://img.shields.io/badge/Apache-Web%20Server-D22128?style=for-the-badge&logo=apache&logoColor=white)

</p>

---

## 👨‍💻 Author

**Venu Gopala Reddy Eppala**

---

# 📖 Project Overview

This project demonstrates how to deploy a **Docker containerized web application on AWS EC2 using Terraform**.

Terraform is used to provision the AWS infrastructure, while **Terraform User Data** automatically installs Docker and deploys the application inside a Docker container.

The application runs using **Apache HTTP Server** and is exposed through **Port 80**.

The complete deployment process is automated using **Terraform Infrastructure as Code**.

---

# 🎯 Objective

The objective of this project is to understand and implement automated Docker application deployment using Terraform on AWS.

The project covers:

- Docker Images
- Docker Containers
- Dockerfile
- AWS EC2
- AWS Security Groups
- Terraform
- Terraform Variables
- Terraform Outputs
- Terraform User Data
- Infrastructure as Code
- Automated Docker installation
- Automated Docker image creation
- Automated Docker container deployment
- HTTP Port 80
- SSH Port 22

---

# 🏗️ Architecture

```text
                         Internet
                            │
                            │
                         HTTP :80
                            │
                            ▼
                 ┌──────────────────────┐
                 │    AWS Security      │
                 │       Group          │
                 │                      │
                 │    SSH :22           │
                 │    HTTP :80          │
                 └──────────┬───────────┘
                            │
                            ▼
                 ┌──────────────────────┐
                 │       AWS EC2        │
                 │       Ubuntu         │
                 │                      │
                 │  Terraform User Data │
                 └──────────┬───────────┘
                            │
                            ▼
                         Docker
                            │
                            ▼
                 ┌──────────────────────┐
                 │   Apache Container   │
                 │       Port 80        │
                 └──────────┬───────────┘
                            │
                            ▼
                     Web Application
                            │
                            ▼
                         Browser
```

---

# 🔄 Deployment Flow

```text
Terraform
    │
    ▼
AWS EC2
    │
    ▼
Ubuntu
    │
    ▼
Terraform User Data
    │
    ├── Install Docker
    │
    ├── Start Docker
    │
    ├── Create Application
    │
    ├── Create Dockerfile
    │
    ├── Build Docker Image
    │
    └── Run Docker Container
              │
              ▼
        Apache Web Server
              │
              ▼
           Port 80
              │
              ▼
           Browser
```

---

# 🐳 Docker Architecture

The project uses Docker to containerize the web application.

```text
Docker Image
     │
     ▼
Apache HTTP Server
     │
     ▼
Docker Container
     │
     ▼
Port 80
     │
     ▼
Web Application
```

The Docker container provides an isolated environment for running the Apache web application.

---

# 🛠️ Technologies Used

| Category | Technology |
|---|---|
| Infrastructure as Code | Terraform |
| Cloud Platform | AWS |
| Compute | AWS EC2 |
| Operating System | Ubuntu |
| Containerization | Docker |
| Web Server | Apache HTTP Server |
| Network Security | AWS Security Group |
| Automation | Terraform User Data |
| Frontend | HTML / CSS |
| Version Control | Git |
| Repository | GitHub |

---

# 📂 Project Structure

```text
terraform-Docker-App/
│
├── README.md
│
├── terraform-docker-app/
│   │
│   ├── versions.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── security_group.tf
│   ├── ec2.tf
│   ├── outputs.tf
│   └── user-data.sh
│
├── Docker-App/
│   │
│   └── app/
│       ├── Dockerfile
│       └── index.html
│
└── screenshots/
```

---

# 📋 Prerequisites

Before running the project, install or configure:

- AWS Account
- AWS CLI
- Terraform
- Docker Desktop
- Git
- Git Bash / PowerShell
- VS Code
- AWS EC2 Key Pair
- Web Browser

---

# 🐳 Step 1: Create Docker Application

The project contains a simple HTML/CSS web application.

The application is stored inside the application directory.

The Dockerfile uses **Apache HTTP Server** as the base image.

The application is copied into the Apache web directory and served through Port 80.

---

# 🐳 Step 2: Build Docker Image

Build the Docker image locally to verify that the application works correctly.

```bash
docker build -t Docker-App .
```

Check the image:

```bash
docker images
```

---

# ▶️ Step 3: Run Docker Container

Run the application locally:

```bash
docker run -d --name Docker-App -p 80:80 Docker-App:latest
```

Check the running container:

```bash
docker ps
```

Check the container logs:

```bash
docker logs Docker-App
```

---

# 🌐 Step 4: Test Application Locally

Open the browser:

```text
http://localhost
```

The application should be displayed successfully.

### Result

✅ Docker image built successfully.

✅ Docker container started successfully.

✅ Application accessible through localhost.

---

# ☁️ Step 5: Terraform Infrastructure

Terraform is used to provision the AWS infrastructure.

The Terraform configuration creates:

- AWS Security Group
- Ubuntu EC2 Instance
- Public IP
- SSH access
- HTTP access
- Terraform User Data

---

# 🔐 Step 6: Security Group

The Security Group provides the required network access.

## Inbound Rules

| Port | Protocol | Purpose |
|---|---|---|
| 22 | TCP | SSH |
| 80 | TCP | HTTP |

### SSH Port 22

Port 22 allows SSH access to the Ubuntu EC2 instance.

### HTTP Port 80

Port 80 allows users to access the Dockerized web application.

> For production environments, SSH access should be restricted to trusted IP addresses.

---

# 🖥️ Step 7: AWS EC2

Terraform creates an Ubuntu EC2 instance.

The EC2 instance is configured with:

- Ubuntu
- EC2 instance type
- Key Pair
- Security Group
- Public IP
- Terraform User Data

The EC2 instance acts as the Docker host.

---

# ⚙️ Step 8: Terraform User Data

Terraform User Data automatically configures the EC2 instance.

The User Data performs the following operations:

```text
Update Ubuntu
      │
      ▼
Install Docker
      │
      ▼
Enable Docker
      │
      ▼
Start Docker
      │
      ▼
Create Application
      │
      ▼
Create Dockerfile
      │
      ▼
Build Docker Image
      │
      ▼
Run Docker Container
      │
      ▼
Expose Port 80
```

No manual Docker installation is required after the EC2 instance is created.

---

# 📄 Step 9: Terraform Configuration

The Terraform project contains the following files:

### `versions.tf`

Defines the Terraform and AWS provider requirements.

### `provider.tf`

Configures the AWS provider and region.

### `variables.tf`

Contains configurable Terraform variables such as:

- AWS region
- EC2 instance type
- Ubuntu AMI
- Key Pair
- SSH CIDR

### `security_group.tf`

Creates the AWS Security Group and configures:

- SSH Port 22
- HTTP Port 80
- Outbound traffic

### `ec2.tf`

Creates the Ubuntu EC2 instance and configures:

- AMI
- Instance type
- Key Pair
- Security Group
- Public IP
- User Data

### `outputs.tf`

Displays:

- EC2 Instance ID
- EC2 Public IP
- EC2 Public DNS
- Application URL

### `user-data.sh`

Automatically installs Docker and deploys the application.

---

# 🚀 Step 10: Terraform Deployment

Navigate to the Terraform directory.

## Format Terraform

```bash
terraform fmt
```

## Initialize Terraform

```bash
terraform init
```

Expected:

```text
Terraform has been successfully initialized!
```

## Validate Terraform

```bash
terraform validate
```

Expected:

```text
Success! The configuration is valid.
```

## Create Terraform Plan

```bash
terraform plan
```

Review the resources Terraform will create.

## Apply Terraform

```bash
terraform apply
```

Enter:

```text
yes
```

Terraform creates the AWS infrastructure and automatically executes the User Data.

Expected:

```text
Apply complete!
```

---

# 📤 Step 11: Terraform Outputs

Display all outputs:

```bash
terraform output
```

Get EC2 Public IP:

```bash
terraform output public_ip
```

Get EC2 Public DNS:

```bash
terraform output public_dns
```

Get application URL:

```bash
terraform output application_url
```

Example:

```text
public_ip = "13.xx.xx.xx"

public_dns = "ec2-13-xx-xx-xx.ap-south-1.compute.amazonaws.com"

application_url = "http://13.xx.xx.xx"
```

---

# 🔑 Step 12: Connect to EC2

Connect to the Ubuntu EC2 instance using SSH:

```bash
ssh -i your-key.pem ubuntu@<EC2-PUBLIC-IP>
```

Example:

```bash
ssh -i terraform-key.pem ubuntu@13.xx.xx.xx
```

---

# 🐳 Step 13: Verify Docker

Check Docker:

```bash
docker --version
```

Check Docker service:

```bash
sudo systemctl status docker
```

Expected:

```text
Active: active (running)
```

---

# 🖼️ Step 14: Verify Docker Image

Run:

```bash
sudo docker images
```

Verify that the application Docker image has been created successfully.

---

# 📦 Step 15: Verify Docker Container

Run:

```bash
sudo docker ps
```

Verify the application container is running.

Expected port mapping:

```text
0.0.0.0:80->80/tcp
```

This means:

```text
EC2 Port 80
     │
     ▼
Container Port 80
```

---

# 📜 Step 16: Check Docker Logs

Run:

```bash
sudo docker logs terraform-docker-app
```

Use the logs to verify that the Apache application started successfully.

---

# 🔎 Step 17: Verify User Data

Check the cloud-init output:

```bash
sudo cat /var/log/cloud-init-output.log
```

Check cloud-init status:

```bash
sudo cloud-init status
```

These logs can be used to verify the execution of the Terraform User Data script.

---

# 🌐 Step 18: Access Application

Get the EC2 Public IP:

```bash
terraform output public_ip
```

Open the application in a browser:

```text
http://<EC2-PUBLIC-IP>
```

Example:

```text
http://13.xx.xx.xx
```

### Expected Result

The Dockerized Apache web application should be displayed.

---

# 📸 Screenshots

Screenshots from the deployment and testing process are stored in the `screenshots` directory.

## Project Structure

![Project Structure](screenshots/project-structure.png)

## Terraform Init

![Terraform Init](screenshots/terraform-init.png)

## Terraform Validate

![Terraform Validate](screenshots/terraform-validate.png)

## Terraform Plan

![Terraform Plan](screenshots/terraform-plan.png)

## Terraform Apply

![Terraform Apply](screenshots/terraform-apply.png)

## AWS EC2 Instance

![AWS EC2 Instance](screenshots/ec2-instance.png)

## Docker Images

![Docker Images](screenshots/docker-images.png)

## Docker Container

![Docker Container](screenshots/docker-ps.png)

## Docker Logs

![Docker Logs](screenshots/docker-logs.png)

## Browser Application

![Browser Application](screenshots/browser-output.png)

## Terraform Destroy

![Terraform Destroy](screenshots/terraform-destroy.png)

---

# 🔧 Troubleshooting

## Docker Service Not Running

Check Docker:

```bash
sudo systemctl status docker
```

Start Docker:

```bash
sudo systemctl start docker
```

Enable Docker:

```bash
sudo systemctl enable docker
```

---

## Container Is Not Running

Check all containers:

```bash
sudo docker ps -a
```

Check logs:

```bash
sudo docker logs terraform-docker-app
```

---

## Application Is Not Accessible

Verify:

- EC2 instance is running
- EC2 has a public IP
- Docker is running
- Docker container is running
- Port mapping is `80:80`
- Security Group allows Port 80
- Apache is running

---

## Port 80 Is Not Accessible

Verify the AWS Security Group contains:

```text
HTTP
TCP
Port 80
Source: 0.0.0.0/0
```

---

## User Data Failed

Check:

```bash
sudo cat /var/log/cloud-init-output.log
```

Also check:

```bash
sudo cloud-init status
```

---

## SSH Connection Failed

Verify:

- EC2 Public IP
- EC2 Key Pair
- `.pem` file
- Ubuntu username
- Security Group
- Port 22
- Network connectivity

---

# 🧹 Step 19: Cleanup

After testing the application, remove the infrastructure using Terraform.

```bash
terraform destroy
```

Enter:

```text
yes
```

Expected:

```text
Destroy complete!
```

This removes the AWS resources created by Terraform.

---

# 📚 Terraform Commands

| Command | Purpose |
|---|---|
| `terraform fmt` | Format Terraform files |
| `terraform init` | Initialize Terraform |
| `terraform validate` | Validate configuration |
| `terraform plan` | Preview infrastructure changes |
| `terraform apply` | Create infrastructure |
| `terraform output` | Display output values |
| `terraform destroy` | Remove infrastructure |

---

# 🐳 Docker Commands

| Command | Purpose |
|---|---|
| `docker build` | Build Docker image |
| `docker images` | List Docker images |
| `docker run` | Start Docker container |
| `docker ps` | List running containers |
| `docker ps -a` | List all containers |
| `docker logs` | View container logs |
| `docker inspect` | Inspect container |
| `docker exec` | Execute commands inside container |
| `docker stop` | Stop container |
| `docker start` | Start container |
| `docker rm` | Remove container |

---

# 📊 Test Results

| Test Case | Expected Result | Status |
|---|---|---|
| Docker Installation | Docker installed | ✅ Passed |
| Docker Image Build | Image created | ✅ Passed |
| Local Container | Container running | ✅ Passed |
| Local Application | Website accessible | ✅ Passed |
| Terraform Initialization | Successful | ✅ Passed |
| Terraform Validation | Valid configuration | ✅ Passed |
| Terraform Plan | Resources displayed | ✅ Passed |
| Terraform Apply | Infrastructure created | ✅ Passed |
| EC2 Instance | Running | ✅ Passed |
| Security Group | Ports configured | ✅ Passed |
| Docker on EC2 | Running | ✅ Passed |
| Docker Image on EC2 | Available | ✅ Passed |
| Docker Container on EC2 | Running | ✅ Passed |
| Port 80 | Accessible | ✅ Passed |
| User Data | Executed successfully | ✅ Passed |
| Browser Application | Accessible | ✅ Passed |
| Terraform Destroy | Infrastructure removed | ✅ Passed |

---

# 📚 Key Learnings

This project provided practical experience with:

### Docker

- Docker Images
- Docker Containers
- Dockerfile
- Docker Port Mapping
- Docker Logs
- Container Lifecycle

### AWS

- AWS EC2
- Ubuntu
- AWS Security Groups
- Public IP
- SSH
- HTTP

### Terraform

- Terraform Providers
- Terraform Resources
- Terraform Data Sources
- Terraform Variables
- Terraform Outputs
- Terraform User Data
- Terraform State
- Infrastructure as Code

### DevOps

- Infrastructure Automation
- Containerization
- Automated Application Deployment
- Linux Administration
- Cloud Infrastructure

---

# 🎯 Key Benefits

## Infrastructure as Code

AWS infrastructure is provisioned and managed using Terraform.

## Automation

Docker installation and application deployment are automated through Terraform User Data.

## Repeatability

The same Terraform configuration can be used to recreate the infrastructure.

## Containerization

The application runs inside an isolated Docker container.

## Easy Deployment

The application is accessible through the EC2 Public IP.

## Easy Cleanup

The complete infrastructure can be removed using Terraform.

---

# 🏆 Overall Outcome

Successfully deployed a **Dockerized Apache web application on an Ubuntu AWS EC2 instance using Terraform**.

The complete workflow is:

```text
Terraform
    ↓
AWS EC2
    ↓
Ubuntu
    ↓
Terraform User Data
    ↓
Docker
    ↓
Docker Image
    ↓
Docker Container
    ↓
Apache
    ↓
Port 80
    ↓
Browser
```

The project demonstrates how **Terraform Infrastructure as Code and Docker containerization** can be combined to automate cloud infrastructure provisioning and application deployment.

---

# 🔮 Future Improvements

The project can be further enhanced with:

- HTTPS / SSL
- AWS Application Load Balancer
- AWS Route 53
- Custom Domain
- Docker Compose
- Amazon ECR
- Auto Scaling
- GitHub Actions CI/CD
- Prometheus
- Grafana
- CloudWatch Monitoring
- Terraform Remote State
- Terraform Modules
- AWS ECS / EKS

---

# 🏆 Project Highlights

```text
                  Terraform Docker App
                           │
                           ▼
                       Terraform
                           │
                           ▼
                        AWS EC2
                           │
                           ▼
                         Ubuntu
                           │
                           ▼
                    Terraform User Data
                           │
                           ▼
                         Docker
                           │
                           ▼
                    Apache Container
                           │
                           ▼
                        Port 80
                           │
                           ▼
                     Web Application
```

---

# 👨‍💻 Author

## Venu Gopala Reddy Eppala

**AWS Cloud & DevOps Engineer**

### Technologies Demonstrated

```text
AWS
Terraform
Docker
Ubuntu
Apache
Linux
Git
GitHub
Infrastructure as Code
```

---

# 🔗 GitHub Repository

[Terraform Docker Application](https://github.com/venugopalareddy46/terraform-Docker-App)

---

# ⭐ Conclusion

This project demonstrates the practical implementation of **Terraform, AWS EC2, Docker, Ubuntu, Apache, Security Groups, User Data, Variables, and Outputs**.

The application is automatically deployed inside a Docker container on AWS EC2 using Terraform.

The project demonstrates:

**Infrastructure as Code + Containerization + Automation + Cloud Deployment**

---

⭐ **If you found this project useful, consider giving the repository a star!**