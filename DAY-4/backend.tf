terraform {
  backend "s3" {
    bucket = "vyshujhuuu"
    key    = "terraform.tfstate"
    region = "ap-southeast-2"
  }
}