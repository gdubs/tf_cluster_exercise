provider "aws" {
  region  = "us-east-2"
  profile = "default"
}

resource "aws_eks_cluster" "cluster" {
  name     = "ConsoleFirstTest"
  role_arn = "arn:aws:iam::311811185889:role/eksClusterRole"
  vpc_config {
    subnet_ids = ["subnet-d69672ab", "subnet-f7ef419c", "subnet-e8ade1a4"]
  }
}
