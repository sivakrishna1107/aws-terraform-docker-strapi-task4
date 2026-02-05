Strapi Deployment with docker and alb on AWS Using Terraform

This project demonstrates how to deploy a Strapi application on AWS using Terraform and Docker. The setup uses an EC2 instance running inside a private network and exposes Strapi to the internet through an Application Load Balancer.

The goal of this setup is to provide a simple and automated way to run Strapi in AWS without manually configuring servers or networking.

What This Project Does

It creates AWS infrastructure using Terraform
It launches an EC2 instance in the ap south 1 region
It installs Docker automatically using user data
It runs Strapi as a Docker container on port 1337
It exposes Strapi using an Application Load Balancer
It outputs the public URL of the application

AWS Region and Instance Details

Region is ap south 1
Instance type is t2 micro
AMI used is ami 0ff5003538b60d5ec

Prerequisites

Terraform must be installed on your local machine
AWS CLI must be installed and configured
You must have an AWS account with required permissions

How to Deploy

Clone the repository to your local machine

Run terraform init to initialize the project

Run terraform plan to review the changes

Run terraform apply and approve when prompted

Terraform will create all required resources automatically

Accessing Strapi

After deployment Terraform outputs the Application Load Balancer DNS name

Example

strapi ap alb 788546221 ap south 1 elb amazonaws com

Open this address in your browser

http colon slash slash alb dns name

Strapi will be available on port 1337

Docker Details

Docker is installed automatically on the EC2 instance
Strapi runs inside a Docker container
No manual SSH steps are required

Notes

This setup is intended for learning and development purposes
For production use consider adding HTTPS authentication and persistent storage

Conclusion

This project provides a simple quick start for running Strapi on AWS using Terraform and Docker. All infrastructure and application setup is automated so you can focus on development instead of server management.
