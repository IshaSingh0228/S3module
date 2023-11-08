#main.tf

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.24.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

module"s3"{
	source="git::https://github.com/IshaSingh0228/S3module.git"

	}
