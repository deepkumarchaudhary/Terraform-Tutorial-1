terraform {
  required_version = ">= 0.11.0"
  backend "s3" {
    bucket = "backup-state-terraform1"
    key    = "terraform/test"
    region = "ap-south-1"
    dynamodb_table = "backend-test"
  }
}
