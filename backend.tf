terraform {
  backend "s3" {
    bucket = "vyshujhuuu"
    key    = "terraform.tfstate"
    use_lock_file = true # it enables s3 state-locking
    region = "ap-southeast-2"
  }
}