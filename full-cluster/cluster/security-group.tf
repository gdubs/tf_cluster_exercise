resource "aws_security_group" "worker_group_single" {
  name   = "eks-security-group"
  vpc_id = module.vpc.vpc_id

  ingress {
    to_port   = 22
    from_port = 22
    protocol  = "tcp"

    cidr_blocks = ["10.0.0.0/16"]
  }

  tags = {
    Name  = "cluster security group - single"
    Owner = "tf first"
  }
}

resource "aws_security_group" "worker_group_all" {
  name   = "eks-security-group-all"
  vpc_id = module.vpc.vpc_id

  ingress {
    to_port   = 22
    from_port = 22
    protocol  = "tcp"

    cidr_blocks = [
      "10.0.0.0/16",
      "172.16.0.0/16",
      "192.168.0.0/16"
    ]
  }

  tags = {
    Name  = "cluster security group - all"
    Owner = "tf first"
  }
}

