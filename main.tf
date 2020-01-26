#main.tf
# Configure the AWS Provider
provider "aws" {
 region = "us-east-1"
 access_key = "${var.aws_access_key}"
 secret_key = "${var.aws_secret_key}"
}
# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet1" {
  vpc_id     = "${aws_vpc.example.id}"
  cidr_block = "10.0.1.0/24"
}
