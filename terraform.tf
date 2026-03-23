terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.37.0"
    }
  }

  backend "s3" {
    config{
      bucket = "amzn-aaron-tf-state-bucket"
      key    = "network/terraform.tfstate"
      region = "us-east-2"
    }
  }

  required_version = ">=1.2"
}