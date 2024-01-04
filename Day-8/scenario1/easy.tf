provider "aws" {
  region = "ap-south-2"
}

resource "aws_instance" "machine" {
    ami = "ami-06fe902e167e67d33"
    instance_type = "t3.micro"
}
