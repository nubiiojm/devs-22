terraform {
  backend "s3" {
    bucket         = "venujenkins11"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "venu11"
  }
}
resource "aws_instance" "public_instance" {
 ami           = var.ami
 instance_type = var.instance_type

 tags = {
   Name = var.name_tag,
 }
}
