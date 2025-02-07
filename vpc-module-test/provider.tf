terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }


  backend "s3" {
    bucket         = "86s-tf-remote-state"
    key            = "module-demo"
    region         = "us-east-1"
    dynamodb_table = "86s-state-locking"
  }
}

provider "awscc" {
  # Configuration options
  region = "us-east -1"
}