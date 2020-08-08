resource "aws_instance" "web1" {
  ami           = lookup(var.ami_id, var.region)
  instance_type = var.instance_type

# Public Subnet assign to instance
  subnet_id     = aws_subnet.public_1.id

resource "aws_instance" "web2" {
  ami           = lookup(var.ami_id, var.region)
  instance_type = var.instance_type

# Public Subnet assign to instance
  subnet_id     = aws_subnet.public_2.id

# Security group assign to instance
  vpc_security_group_ids=[aws_security_group.allow_ssh.id]

# key name
connection {
  user        = "ec2-user"
  private_key = "${file("${var.private_key_path}")}"
    host = "${aws_instance.user_data_example_input_file.public_ip}"
}
user_data = "${file("apache_config.sh")}"

  tags = {
    Name = "Ec2-with-VPC"
  }
}
