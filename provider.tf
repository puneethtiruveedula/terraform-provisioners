# terraform workspace list
# terraform workspace new
# terraform workspace select

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "puneeth-remote-state"
    key = "provisioners-demo"
    region = "us-east-1"
    dynamodb_table = "puneeth-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}