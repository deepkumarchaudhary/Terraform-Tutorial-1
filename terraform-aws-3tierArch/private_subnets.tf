resource "aws_subnet" "private_1" {
  vpc_id     = aws_vpc.vpc_3Tier.id
  map_public_ip_on_launch = false
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "private_1-3Tier"
  }
}
resource "aws_subnet" "private_2" {
  vpc_id     = aws_vpc.vpc_3Tier.id
  map_public_ip_on_launch = false
  cidr_block = "10.0.4.0/24"
  availability_zone = "ap-south-1b"

  tags = {
    Name = "private_2-3Tier"
  }
}
/*resource "aws_subnet" "private_3" {
  vpc_id     = aws_vpc.vpc_3Tier.id
  map_public_ip_on_launch = false
  cidr_block = "10.0.6.0/24"

  tags = {
    Name = "private_3-3Tier"
  }
}*/
