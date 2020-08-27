resource "aws_subnet" "public_1" {
  vpc_id     = ${aws_vpc.vpc_demo.id}
  map_public_ip_on_launch = true
  cidr_block = "190.160.1.0/24"

  tags = {
    Name = "public_1-demo"
  }
}
resource "aws_subnet" "public_2" {
  vpc_id     = aws_vpc.vpc_demo.id
  map_public_ip_on_launch = true
  cidr_block = "190.160.2.0/24"

  tags = {
    Name = "public_2-demo"
  }
}
