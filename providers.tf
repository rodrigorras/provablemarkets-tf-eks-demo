terraform {
  # Backend configuration with your S3 bucket
  backend "s3" {
    bucket = "demo-provable-labs-bucket"
    key    = "eks/terraform.tfstate" 
    region = "eu-central-1"
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}