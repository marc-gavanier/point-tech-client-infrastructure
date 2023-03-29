terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "point-tech"

    workspaces {
      prefix = "point-tech-client-"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.11"
    }
  }
}

provider "aws" {
  region = "eu-west-3"
}
