provider "aws" {
  region	=	"ap-south-1"
  version	=	"~> 2.0"
}

resource "aws_instance" "terraformtraining" {
  ami           =	"ami-052c08d70def0ac62"
  instance_type =	"t2.micro"
}

