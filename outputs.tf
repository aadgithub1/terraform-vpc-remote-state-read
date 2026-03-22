output "vpc-id" {
  value = aws_vpc.terraform_vpc.id
}

output "subnet-id" {
  value = aws_subnet.terraform_vpc_subnet.id
}