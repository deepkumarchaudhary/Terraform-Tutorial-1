resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.vpc_3Tier.id}"

  tags = {
    Name = "internet-gateway-3Tier"
  }
}
