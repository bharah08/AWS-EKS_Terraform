terraform {
  backend "s3" {
    bucket = "terraformstatefile1234"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
