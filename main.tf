provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "terraform_vpc" {
  cidr_block       = "10.0.0.0/20"
  instance_tenancy = "default"

  tags = local.common_tags
}

resource "aws_subnet" "terraform_vpc_subnet" {
  vpc_id     = aws_vpc.terraform_vpc.id
  cidr_block = "10.0.0.0/24"

  tags = local.common_tags

}