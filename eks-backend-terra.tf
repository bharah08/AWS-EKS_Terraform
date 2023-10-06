terraform {
  backend "s3" {
    bucket = "terraformstatefile1234"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "state-file"
  }
}
resource "aws_dynamodb_table" "terraform_lock" {
  name           = "statefile"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "lockid"

  attribute {
    name = "lockid"
    type = "S"
  }
}
