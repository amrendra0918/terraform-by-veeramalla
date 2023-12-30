provider "aws" {
  region = "ap-south-2"
}

resource "aws_instance" "lamha" {
  ami = var.ami_value
  instance_type = var.instance_type_value
  subnet_id = var.subnet_id_value
  tags_all = {
    name = "chameli"
  }
  }
