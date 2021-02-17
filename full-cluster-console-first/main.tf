provider "aws" {
  region  = "us-east-2"
  profile = "default"
}

resource "aws_eks_cluster" "cluster" {
  name     = "ConsoleFirstTest"
  role_arn = "arn:aws:iam::${var.account-id}:role/eksClusterRole"
  vpc_config {
    subnet_ids = ["subnet-d69672ab", "subnet-f7ef419c", "subnet-e8ade1a4"]
  }
}

# data "aws_subnet_ids" "subnets" {
#   vpc_id = "vpc-bf1790d4"
# }

variable "account-id" {
  type    = string
  default = "7777777777"
}
