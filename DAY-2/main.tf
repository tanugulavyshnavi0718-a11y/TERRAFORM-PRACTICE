resource "aws_instance" "main" {
  ami = var.ami-id
  instance_type = var.instance_type
  subnet_id = aws_subnet.main.id

  tags = {
    Name = "my-instance"
  }
}

resource "aws_vpc" "main" { 
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "main-vpc"
  }
}

resource "aws_subnet" "main" {
  vpc_id = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "main-subnet"
  }
}

resource "aws_security_group" "main" {
  vpc_id = aws_vpc.main.id
  name = "main-security-group"
  description = "Allow SSH and HTTP inbound traffic"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}