
resource "aws_s3_bucket" "bucket" {
  bucket = "my-testbucket1-deep"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
