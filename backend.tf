terraform {
  backend "s3" {
    bucket = "vyshujhuuu"
    key    = "terraform.tfstate"
    use_lockfile = true
    region = "ap-southeast-2"
  }
}