terraform {
  backend "s3" {
    bucket = "terraform-b73-sriteja"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}