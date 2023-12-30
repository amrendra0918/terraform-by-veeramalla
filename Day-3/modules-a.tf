provider "aws" {
    region = "ap-south-2"
}

module "ec2_ka_module" {
  source = "./modules/aws_instance"
  ami_value = "ami-0bbc2f7f6287d5ca6"
  instance_type_value = "t3.micro"
  subnet_id_value = "subnet-0b57adb99b6e24210"
}


