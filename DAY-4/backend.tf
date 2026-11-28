terraform {
  backend "s3" {
    bucket = "vyhsndsnjnnnn"
    key    = "terraform.tfstate"
    use_lockfile = true
    region = "ap-southeast-2"
  }
}