
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.49.0"
    }
  }
  backend "s3" {
    bucket = "devprj-bucket"
    key    = "expense-vp"
    region = "us-east-1"
    dynamodb_table = "devdyno"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"

}