terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.38.0"
    }
  }
/*
  #adding s3 bucket for remote state storage
  backend "s3"{
    bucket = "tf-statefiles-bucket"
    key = "rds/terraform.tfstate"
    region = "ap-south-1"
  }
*/
}

provider "aws" {
  version = "~> 3.38.0"
  region = var.region
}
