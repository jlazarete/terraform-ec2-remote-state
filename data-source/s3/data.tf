data "terraform_remote_state" "server" {
  backend = "s3"

  config = {
    bucket  = "tfstate-503384304464"
    key     = "data-sources-s3/terraform.tfstate"
    region  = var.aws_region
    profile = var.aws_profile
  }
}
