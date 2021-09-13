terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "ap-northeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-02892a4ea9bfa2192"
  instance_type = "t3.micro"
  subnet_id     = "subnet-0763ff29c6ddee7bb"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

