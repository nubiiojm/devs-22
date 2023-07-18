terraform {
  backend "s3" {
    bucket         = "venujenkins11"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "venu11"
  }
}
