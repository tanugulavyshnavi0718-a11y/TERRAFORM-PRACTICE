resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags = {
       Name = "my-vpc"
    }
}
 resource "aws_subnet" "name" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-southeast-2a"
    }
    resource "aws_subnet" "name1" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-southeast-2a"
    }
    
    resource "aws_internet_gateway" "my_igw" {
      vpc_id = aws_vpc.name.id

     tags = {
       Name = "my-internet-gateway"
   }
}
