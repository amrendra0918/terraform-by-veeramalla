# Migrating a resource from aws to terraform.
Create a Terraform configuration file main.tf

provider "aws" {
  region = "ap-south-2"
}

resource "aws_instance" "machine" {
    ami = "ami-06fe902e167e67d33"
    instance_type = "t3.micro"
}

# Run terraform init
# Run terraform import aws_instance.machine i-xxxxxxxxxxxxxxxxx (replace it with Instance Id)

# Run terraform plan
# Run terraform apply


