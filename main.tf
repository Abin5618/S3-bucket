# Configure the AWS provider
provider "aws" {
  region = "us-east-1"  # Specify the AWS region (US East 1)
}

# Create an S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "abin-3011734"  # Provide a globally unique name
}

# Output the bucket name after creation
output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}

