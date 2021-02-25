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

  azs             = var.availability-zones
  private_subnets = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
  public_subnets  = ["10.0.151.0/24", "10.0.152.0/24", "10.0.153.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  public_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster-name}" = "shared"
    "kubernetes.io/role/elb"                    = "1"
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${var.cluster-name}" = "shared"
    "kubernetes.io/role/internal-elb"           = "1"
  }

  tags = {
    Name  = "main vpc cluster"
    Owner = "tf first"
  }
}


