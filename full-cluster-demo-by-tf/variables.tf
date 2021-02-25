variable "aws_region" {
  default = "us-east-2"
}

variable "cluster-name" {
  default = "terraform-eks-demo-gr"
  type    = string
}

variable "aws_access_profile" {
  type    = string
  default = "default"
}
