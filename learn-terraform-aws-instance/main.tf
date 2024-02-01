terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-southeast-2"
}

resource "aws_s3_bucket" "theRoot" {
  bucket = "root-bucket-wilton"

  tags = {
    Name        = "Bucket root"
    Environment = "Dev"
  }
}
