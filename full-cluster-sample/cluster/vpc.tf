resource "aws_vpc" "main-vpc" {
  enable_dns_support = true

  tags = {
    Name = "main vpc cluster"
  }
}

output "vpc_id" {
  value       = aws_vpc.main-vpc.id
  description = "Main VPC id"
}
