terraform {
  backend "s3" {
    bucket = "baalti-for-terra09"
    region = "ap-south-2"
    key = "amar/terraform-statefiles"
  }
}
