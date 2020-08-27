resource "aws_vpc" "vpc_demo" {
  cidr_block       = var.cidr
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = var.tags
  }

}
