# 🚀 Terraform Docker Application Deployment on AWS EC2

<p align="center">

<img src="https://img.shields.io/badge/AWS-EC2-orange?style=for-the-badge&logo=amazon-aws" />

<img src="https://img.shields.io/badge/Terraform-Infrastructure%20as%20Code-7B42BC?style=for-the-badge&logo=terraform" />

<img src="https://img.shields.io/badge/Docker-Container-2496ED?style=for-the-badge&logo=docker" />

<img src="https://img.shields.io/badge/Ubuntu-Server-E95420?style=for-the-badge&logo=ubuntu" />

<img src="https://img.shields.io/badge/Apache-Web%20Server-D22128?style=for-the-badge&logo=apache" />

</p>

<p align="center">

<img src="https://img.shields.io/badge/DevOps-Project-success?style=flat-square" />
<img src="https://img.shields.io/badge/Infrastructure-Automated-blue?style=flat-square" />
<img src="https://img.shields.io/badge/Deployment-Dockerized-green?style=flat-square" />

</p>

---

# 📌 Project Objective

The objective of this project is to **provision an Ubuntu AWS EC2 instance using Terraform and automatically deploy a Docker containerized web application**.

Terraform is used to create the AWS infrastructure, including the EC2 instance and Security Group.

Terraform **User Data** automatically performs the application deployment by:

- Installing Docker on Ubuntu
- Starting and enabling the Docker service
- Creating the HTML application
- Creating the Dockerfile
- Building the Docker image
- Running the Docker container
- Exposing the application on port `80`

The application can then be accessed through the **EC2 Public IP**.

This project demonstrates practical usage of **Terraform, AWS EC2, Docker, Apache, Security Groups, User Data, Variables and Outputs**.

---

# 🏗️ Architecture

```text
                         Internet
                            |
                            | HTTP :80
                            v
                  +-------------------+
                  |   AWS Security    |
                  |       Group       |
                  |                   |
                  |   SSH :22         |
                  |   HTTP :80        |
                  +---------+---------+
                            |
                            v
                  +-------------------+
                  |      AWS EC2       |
                  |      Ubuntu       |
                  |                   |
                  | Terraform UserData|
                  +---------+---------+
                            |
                            v
                         Docker
                            |
                            v
                  +-------------------+
                  | Apache Container  |
                  |      Port 80      |
                  +---------+---------+
                            |
                            v
                       HTML Website
                            |
                            v
                         Browser