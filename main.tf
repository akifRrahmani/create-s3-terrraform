resource "aws_s3_bucket" "akif-s3" {
  bucket = "head-phone-demo"

}

resource "aws_s3_bucket_public_access_block" "akif-s3-access" {
  bucket = aws_s3_bucket.akif-s3.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


resource "aws_s3_object" "my_folder" {
  bucket = aws_s3_bucket.akif-s3.id
  key    = "my_folder/"
}

resource "aws_s3_object" "my_file" {
  bucket = aws_s3_bucket.akif-s3.id
  key    = "my_folder/hello.txt"
}