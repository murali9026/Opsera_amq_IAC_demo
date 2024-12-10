#Create an S3 bucket
resource "aws_s3_bucket" "s3ops" {
  bucket = "opsera-amazonq-iac1"
  
  tags = {
    Environment = "Dev"
    Project     = "Ops"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.s3ops.id
  versioning_configuration {
    status = "Enabled"
  }
}




