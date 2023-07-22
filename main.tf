resource "aws_instance" "public_instance" {
 ami           = var.ami
 instance_type = var.instance_type

 tags = {
   Name = var.name_tag,
 }
}

terraform {
  backend "s3" {
    bucket = "venus3bucket1111"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
