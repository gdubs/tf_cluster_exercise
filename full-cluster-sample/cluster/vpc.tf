resource "aws_vpc" "main-vpc" {
  enable_dns_support = true
  id                 = "vpc-3365c74e"
  tags = {
    Name = "main vpc cluster"
  }
}

output "vpc_id" {
  value       = aws_vpc.main-vpc.id
  description = "Main VPC id"
}
