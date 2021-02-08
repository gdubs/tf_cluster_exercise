provider "aws" {
  region  = "us-east-2"
  profile = "tf_udemy"
}

/* functions, booleans, etc example
resource "aws_instance" "bla" {
  ami           = lookup(var.amis, var.location, "ami-barbar-eurooss")
  instance_type = var.isdev == true ? "t2.dev" : "t2.micro"
  count         = 2
}

output "fqdn" {
  value = aws_instance.bla[*].ami // splat, basically iterates through the list and displays output of each
}
*/

/** data source example **/
/*data "aws_ami" "ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "sample-instance" {
  ami           = data.aws_ami.ami.id
  instance_type = "t2.micro"
}*/

/** data source example **/

data "aws_subnet_ids" "test" {
  vpc_id = "vpc-bf1790d4"
}
data "aws_subnet" "test" {
  for_each = data.aws_subnet_ids.test.ids
  id       = each.value
}
output "subnet_cidr_blocks" {
  value = [for s in data.aws_subnet.test : s.cidr_block]
}
