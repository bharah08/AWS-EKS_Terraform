terraform {
  backend "s3" {
    bucket = "terraformstatefile12"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "state-file"
  }
}
