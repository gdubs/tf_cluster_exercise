# resource "aws_vpc" "main_vpc" {
#   enable_dns_support = true
#   cidr_block         = "172.31.0.0/16"
#   tags = {
#     Name = "main vpc cluster"
#   }
# }

# output "vpc_id" {
#   value       = aws_vpc.main_vpc.id
#   description = "Main VPC id"
# }

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "tf-first-cluster-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Name = "main vpc cluster"
  }
}



