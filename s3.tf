#Providers.tf


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

