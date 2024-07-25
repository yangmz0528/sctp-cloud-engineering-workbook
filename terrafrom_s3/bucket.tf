resource "aws_s3_bucket" "bucket" {
  bucket = "${var.prefix}-tf-2.16-bucket"

  tags = {
    Name        = "${var.prefix}-bucket"
    Environment = "Dev"
  }
}