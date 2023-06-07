AWS RDS PostgreSQL Database Deployment using Terraform

This project involves the use of Terraform, a tool for building, changing, and versioning infrastructure safely and efficiently, to deploy a PostgreSQL database instance on Amazon RDS.
Tools Used

    Terraform: Used for infrastructure as code.
    AWS Provider: Terraform provider used to interact with the many resources supported by AWS.
    AWS RDS: Amazon Relational Database Service used for deploying and managing PostgreSQL database.

Steps Involved

    Provider Configuration: Configure the AWS provider for Terraform with the desired AWS region.

    Subnet Group Creation: Create a database subnet group using the aws_db_subnet_group resource with the specified subnet IDs.

    Database Instance Creation: Deploy a PostgreSQL database instance using the aws_db_instance resource with the specific configurations (engine, instance class, allocated storage, username, password).

    VPC Security Group Association: Associate the database instance with a VPC security group to control inbound and outbound traffic.

    Public Accessibility Configuration: Make the database instance publicly accessible and establish ingress rules to allow TCP connections to the PostgreSQL default port from an IP range.

    Database Endpoint Output: Output the endpoint of the created database instance for user accessibility.

How to Run

Ensure you have Terraform installed and your AWS credentials set up. Run the following commands in your terminal:

bash

terraform init    # to initialize your Terraform working directory
terraform apply   # to apply the changes and create the resources

Note: Please ensure that the subnet IDs and security group IDs match your AWS configuration. Adjust the IP range for the ingress rules as necessary.
