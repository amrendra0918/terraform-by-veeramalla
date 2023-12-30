provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "example" {
    ami           = "ami-0287a05f0ef0e9d9a"
    instance_type = "t2.micro"
    subnet_id = "subnet-00d01a225fd6e26ba"
    key_name = "mumterrapractice"
    tags = {
    Name = "jhukeganahimain"
    }
}


resource "aws_s3_bucket" "example_bucket" {
  bucket = "amarbuc12378"
  acl = "private"
  tags = {
    Name = "amarbuc12378"    
  }
}
