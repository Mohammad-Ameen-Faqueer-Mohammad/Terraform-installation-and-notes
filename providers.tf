terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.14.1"
    }
  }

  backend "s3" {
    bucket         = "amin-ucket-from-tf"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "my-dynamodb-table"
  }
}

provider "aws" {
  region = "ap-south-1"
}
