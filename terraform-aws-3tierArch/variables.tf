variable "access_key" {}
variable "secret_key" {}
variable "availability_zone" {
  type = "string"
  description = "List of Avaibability Zones (e.g. `['ap-south-1a', 'ap-south-1b']`)"
  a  = "ap-south-1a"
  b  = "ap-south-1b"
}
/*variable "availability_zones" {
  type        = list(string)
  description = "List of Avaibability Zones (e.g. `['ap-south-1a', 'ap-south-1b']`)"
}*/
variable "region" {
  type    = "string"
  default = "ap-south-1"
}
variable "ami_id" {
  type = "map"
  default = {
    ap-south-1 = "ami-052c08d70def0ac62"
    ap-southeast-1 = "ami-0615132a0f36d24f4"
  }
}
variable "instance_type" {
  type    = "string"
  default = "t2.micro"
}
variable "private_key_path" {
  default = "mynewkeypair.pem"
}

variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "10.0.0.0/16"
}
variable "instance_tenancy" {
  description = "A tenancy option for instances launched into the VPC"
  type        = string
  default     = "default"
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "enable_classiclink" {
  description = "Should be true to enable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = string
  default     = "Vpc-custom-3Tier"
}
