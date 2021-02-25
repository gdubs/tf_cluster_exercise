provider "aws" {
  # for historical note
  #version = "1.41"
  region = "us-east-2"
}

data "aws_vpcs" "myvpcs" {
}

output "myvpcs" {
  value = data.aws_vpcs.myvpcs.ids
}
