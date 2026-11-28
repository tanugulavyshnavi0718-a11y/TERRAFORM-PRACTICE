resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "my-vpc-3"
  }
}

resource "aws_subnet" "name" {
  vpc_id     = aws_vpc.name.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "my-subnet-1"
  }
}

# resource "aws_instance" "name" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
#   subnet_id     = aws_subnet.name.id

#   tags = {
#     Name = "my-instance"
#   }
# }

resource "aws_s3_bucket" "name" {
  bucket = "vyshujhuuu"
}
  

  
