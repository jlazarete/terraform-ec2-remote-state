terraform {
  required_version = "0.14.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }
  }

  backend "s3" {
    bucket  = "tfstate-503384304464"
    key     = "data-sources-s3/terraform.tfstate"
    region  = "us-east-1"
    profile = "devops"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
