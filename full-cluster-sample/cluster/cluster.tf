# resource "aws_eks_cluster" "eks_cluster" {
#   name     = "tf-first-cluster"
#   role_arn = aws_iam_role.eks_cluster_role.arn
#   vpc_config {
#     subnet_ids = ["subnet-d69672ab", "subnet-f7ef419c", "subnet-e8ade1a4"]
#   }
# }



module "eks" {
  source                          = "terraform-aws-modules/eks/aws"
  cluster_name                    = var.cluster-name
  subnets                         = module.vpc.private_subnets
  cluster_endpoint_private_access = true
  cluster_version                 = "1.17"
  vpc_id                          = module.vpc.vpc_id

  worker_groups = [
    {
      name                          = "workder-group-1"
      instance_type                 = "t2.micro"
      additional_userdata           = "echo test tf"
      asg_deired_capacity           = 1
      additional_security_group_ids = [aws_security_group.worker_group_single.id]
      root_volume_type              = "gp2" #gp3 is invalid issue
    }
  ]

  worker_additional_security_group_ids = [aws_security_group.worker_group_all.id]
  map_roles                            = var.map_roles
  map_users                            = var.map_users
  map_accounts                         = var.map_accounts
}
