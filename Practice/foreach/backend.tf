terraform {
  backend "s3" {
    bucket = "knyt-s3"
    key    = "tfstate"
    region = "us-east-1"
    dynamodb_table = "tfstate-locking"
  }
}