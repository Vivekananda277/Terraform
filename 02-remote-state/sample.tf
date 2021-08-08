provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "sample" {
  ami          = "ami-074df373d6bafa625"
  instance_type = "t3.micro"
  tags = {
    Name="sample"
  }
}



terraform {
  backend "s3" {
    bucket = "terraform277"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform"
 }
}