variable "region" {
  type    = string
  default = "us-east-2"
}

variable "availability-zones" {
  type    = list(string)
  default = ["us-east-2a", "us-east-2b", "us-east-2c"]
}

variable "access-profile" {
  type    = string
  default = "blaprofile"
}

# variable "eks-bucket" {
#   type    = string
#   default = "eks-states"
# }

variable "cluster-name" {
  type    = string
  default = "tf-first-cluster"
}

variable "aws-accountid" {
  type    = string
  default = "66666666"
}

variable "map_accounts" {
  description = "Additional AWS account numbers to add to the aws-auth configmap."
  type        = list(string)

  default = [
    "777777777777",
    "888888888888",
  ]
}

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      rolearn  = "arn:aws:iam::98989898989:role/eksClusterRole_tf_first"
      username = "role1"
      groups   = ["system:masters"]
    },
  ]
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      userarn  = "arn:aws:iam::98989898989:user/user1"
      username = "user1"
      groups   = ["system:masters"]
    },
    {
      userarn  = "arn:aws:iam::98989898989:user/user2"
      username = "user2"
      groups   = ["system:masters"]
    },
  ]
}

