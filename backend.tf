terraform {
  backend "s3" {
    bucket         = "assesment-bucket"
    key            = "assesment/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "assesment-table"
  }
}