terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}
resource "aws_s3_bucket" "bucket" {
  bucket = "rajubucket.txt"

  tags = {
    Name        = "My bucket"
  }
}
resource "aws_s3_object" "file" {
  bucket = aws_s3_bucket.bucket.id
  key    = "hello.txt"
  source = "C:/Users/ammun/raj home/terra1/hello.txt"
}