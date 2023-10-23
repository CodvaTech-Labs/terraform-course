# Setup Static Website Bucket 

resource "aws_s3_bucket" "bucket" {
  bucket = "ctl-static-website-devops"
  tags = {
    Name       = "S3-Static-Website"
    Created_By = "Terraform"
  }
}

resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = aws_s3_bucket.bucket.id
  depends_on = [aws_s3_bucket_object.oject]
  #policy = data.aws_iam_policy_document.bucket_policy.json
  policy = jsonencode(
      {
            "Version": "2012-10-17",
            "Statement": [
        {
                "Sid": "PublicReadGetObject",
                "Effect": "Allow",
                "Principal": "*",
                "Action": "s3:GetObject",
                "Resource": "arn:aws:s3:::ctl-static-website-devops/*"
        }
    ]
      }
  )
}

resource "aws_s3_bucket_website_configuration" "website-config" {
  bucket = "ctl-static-website-devops"
  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_bucket_versioning" "versioning_bucket" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_encryption" {
  bucket = aws_s3_bucket.bucket.bucket
  rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
}


resource "aws_s3_bucket_public_access_block" "block_access" {
  bucket = aws_s3_bucket.bucket.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
