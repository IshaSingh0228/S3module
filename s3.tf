#Providers.tf

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

#S3.tf

resource "aws_s3_bucket" "mys3" {
  bucket = "${var.bucketname}"
  tags = "${var.tags}"
  }

#Variables.tf

variable "bucketname" {}
variable "tags" {
 type = map
}

#myvars.tfvars



#output.tf

output"mys3bucketid"{
	value= "${aws_s3_bucket.mys3.id}"
	}

