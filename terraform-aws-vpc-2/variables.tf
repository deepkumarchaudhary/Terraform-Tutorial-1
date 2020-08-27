variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "ap-south-1"
}
variable "private_key_path" {
  default = "mynewkeypair.pem"
}

variable "ami_id" {
  type = "map"
  default = {
    ap-south-1 = "ami-052c08d70def0ac62"
    ap-southeast-1 = "ami-0615132a0f36d24f4"
  }
}

variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "190.160.0.0/16"
}
variable "instance_tenancy" {
  description = "A tenancy option for instances launched into the VPC"
  type        = string
  default     = "default"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = string
  default     = "Vpc-custom-demo"
 #location    = "Mumbai"
}

variable "subnet_cidr" {
  type        = "list"
  default     = ["190.160.1.0/24","190.160.2.0/24","190.160.3.0/24"]
}

variable "azs" {
  type        = "list"
  default     = ["ap-south-1a","ap-south-1b","ap-south-1c"]
}
