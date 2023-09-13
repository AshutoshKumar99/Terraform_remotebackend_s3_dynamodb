terraform {
    backend "s3" {
      bucket = "ashutosh-tf-test-bucket"
      dynamodb_table = "state-lock"
      key = "global/mystatefile/terraform.tfstate" # where you want to store your state file 
      region = "ap-south-1"
      encrypt = true
    }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}
