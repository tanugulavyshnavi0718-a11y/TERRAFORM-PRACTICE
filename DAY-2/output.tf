output "public_ip" {
    value = aws_instance.name.public_ip
  
}

output "instance_id" {
    value = aws_instance.name.id
}

output "vpc_id" {
    value = aws_vpc.name.id
}

output "ami_id" {
    value = var.ami_id
}