resource "aws_s3_bucket" "my_bucket" {
  bucket = "amin-ucket-from-tf"

  tags = {
    Name = "Ameen bucket"
  }
}

resource "aws_dynamodb_table" "my_dynamodb_table" {
  name         = "my-dynamodb-table"  # Avoid spaces in resource names
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "dynamo table tags"
  }
}
