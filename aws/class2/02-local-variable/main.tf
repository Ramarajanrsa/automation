locals {
  bucket_name = "mygrowth-cbc-platform-usecases"
  env         = "dev"
}


resource "aws_s3_bucket" "my_test_bucket" {
  bucket = local.bucket_name

  tags = {
    Name        = local.bucket_name
    Environment = local.env
  }
}


