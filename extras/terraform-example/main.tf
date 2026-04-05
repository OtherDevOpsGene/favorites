terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.39.0"
    }
  }

  required_version = ">= 1.14.0"
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "my_server" {
  ami           = "ami-0823767a63030e222"
  instance_type = "t4g.nano"

  tags = {
    Name = "my-server"
  }
}
