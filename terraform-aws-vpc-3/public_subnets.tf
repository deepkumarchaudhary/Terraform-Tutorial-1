resource "aws_subnet" "subnets" {
  count                   = "${length(data.aws_availability_zones.azs.names)}"
  availability_zone       = "${element(data.aws_availability_zones.azs.names, count.index)}"
  vpc_id                  = "${aws_vpc.vpc_demo.id}"
  map_public_ip_on_launch = true
  cidr_block              = "${element(var.subnet_cidr, count.index)}"

  tags = {
    Name = "public_subnet-${count.index + 1}"
  }
}
