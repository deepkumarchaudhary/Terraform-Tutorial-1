#public route table with public subnet association
resource "aws_route_table" "route-public" {
  vpc_id = "${aws_vpc.vpc_3Tier.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }
  tags = {
    Name = "public-route-table-3Tier"
  }
}

resource "aws_route_table_association" "public_1" {
  subnet_id      = "${aws_subnet.public_1.id}"
  route_table_id = "${aws_route_table.route-public.id}"
}

resource "aws_route_table_association" "public_2" {
  subnet_id      = "${aws_subnet.public_2.id}"
  route_table_id = "${aws_route_table.route-public.id}"
}

#Private route table with private subnet association
resource "aws_route_table" "route-private" {
  vpc_id = "${aws_vpc.vpc_3Tier.id}"
  tags = {
    Name = "public-route-table-3Tier"
  }
}
resource "aws_route_table_association" "private_1" {
  subnet_id      = "${aws_subnet.private_1.id}"
  route_table_id = "${aws_route_table.route-private.id}"
}

resource "aws_route_table_association" "private_2" {
  subnet_id      = "${aws_subnet.private_2.id}"
  route_table_id = "${aws_route_table.route-private.id}"
}


/*
resource "aws_route_table_association" "public_2" {
  subnet_id      = "${aws_subnet.public_2.id}"
  route_table_id = "${aws_route_table.route-public.id}"
}

resource "aws_route_table_association" "public_3" {
  subnet_id      = "${aws_subnet.public_3.id}"
  route_table_id = "${aws_route_table.route-public.id}"
}
*/
