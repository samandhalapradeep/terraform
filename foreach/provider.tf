terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "daws76s-remote-state1"
    key    = "foreach"
    region = "us-east-1"
    dynamodb_table = "daws76s-locking-develop"
  }
}

provider "aws" {
  region = "us-east-1"
}