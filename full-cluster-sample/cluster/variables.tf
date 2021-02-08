variable "region" {
  type    = string
  default = "us-east-1"
}

variable "access-profile" {
  type    = string
  default = "tf_udemy"
}

variable "eks-bucket" {
  type    = string
  default = "eks-states"
}
