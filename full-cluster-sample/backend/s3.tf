resource "aws_s3_bucket" "eksbucket" {
  bucket = "eks-states"
  acl    = "private"

  tags = {
    Name  = "EKS State"
    Owner = "gabe"
  }
}
