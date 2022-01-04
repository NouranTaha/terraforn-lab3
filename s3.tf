resource "aws_s3_bucket" "b" {
  bucket = lower("Nouran-bucket")
  acl    = "private"

  tags = {
    Name   = "My bucket"
    
  }
}