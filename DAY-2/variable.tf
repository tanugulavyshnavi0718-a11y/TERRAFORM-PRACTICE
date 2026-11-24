variable "ami-id" {
  description = "The AMI ID to use for the instance"
  default     = "ami-09a2f74ce8538e414"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to use"
  default     = "t3.micro"
  type        = string
}
