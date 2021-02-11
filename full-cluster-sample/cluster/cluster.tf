resource "aws_eks_cluster" "eks_cluster" {
  name     = "tf-first-cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn
  vpc_config {
    subnet_ids = ["subnet-d69672ab", "subnet-f7ef419c", "subnet-e8ade1a4"]
  }
}
