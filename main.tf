terraform {
  required_version = "0.14.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }
  }

  backend "s3" {
    /* [Após executar o aplpay, essas linhas podem ser comentadas
    para que o backend seja lido no arquivo backend.hcl]
    bucket  = "tfstate-503384304464"
    key     = "devops/teste01/terraform.tfstate"
    region  = "us-east-1"
    profile = "devops" */

  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
