provider "aws" {
  region = "ap-south-2"  
}

resource "aws_instance" "amrendra" {
  ami = "ami-0bbc2f7f6287d5ca6"
  instance_type = "t3.micro"
  subnet_id = "subnet-0b57adb99b6e24210"
  tags_all = {
    name = "amar"
  }
}

resource "aws_s3_bucket" "baalti" {
  bucket = "baalti-for-terra09"
}

