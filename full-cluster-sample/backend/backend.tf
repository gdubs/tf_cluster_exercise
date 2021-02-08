


/* backend */

terraform {
  backend "s3" {
    bucket = "eks-states"
    key    = "test/eks/cluster.tfstate"
    region = "us-east-1"
  }
}


