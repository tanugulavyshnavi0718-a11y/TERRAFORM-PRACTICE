variable "ami_id" {
  description = "The AMI ID to use for the instance"
  default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
  type        = string
}

variable "instance_type" {
  description = "The type of instance to create"
  default     = "t2.micro"
  type        = string
}   

variable "bucket_name" {
  description = "The name of the S3 bucket to create"
  default     = "123456778gyuuii"
  type        = string
}

