terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.51.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_lightsail_instance" "myserver" {
  name              = "myserver"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         = fille("script.sh")

  key_pair_name = "name"
  tags = {
    team      = "devops"
    env       = "dev"
    create_by = "terraform"
  }
}

output "my-public-ip" {
  value = aws_lightsail_instance.myserver.public_ip_address
}
output "my-username" {
  value = aws_lightsail_instance.myserver.username
}

output "my-key" {
  value = aws_lightsail_instance.myserver.key_pair_name
}

