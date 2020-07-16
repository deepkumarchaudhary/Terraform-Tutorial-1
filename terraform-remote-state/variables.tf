variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "ap-south-1"
}
variable "ami_id" {
  type = "map"
  default = {
    ap-south-1 = "ami-052c08d70def0ac62"
    ap-southeast-1 = "ami-0615132a0f36d24f4"
  }
}
