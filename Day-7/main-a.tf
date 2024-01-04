provider "aws" {
  region = "ap-south-2"
}

provider "vault" {
  address = "http://18.61.208.42:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "bd5e0c7a-4aa0-a95a-d698-8244ad44f70d"
      secret_id = "72b6f396-c965-c0df-cddc-56ce8066a307"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kv" // change it according to your mount
  name  = "test-secret" // change it according to your secret
}

resource "aws_instance" "my_instance" {
  ami           = "ami-06fe902e167e67d33"
  instance_type = "t3.micro"

  tags = {
    Name = "test"
    Secret = data.vault_kv_secret_v2.example.data["username"]
  }
}
