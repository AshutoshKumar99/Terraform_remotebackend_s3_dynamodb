#Create s3 bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = "ashutosh-tf-test-bucket"
  versioning {
    enabled = true
  }

server_side_encryption_configuration {
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
  tags = {
    Name        = "My bucket"
    Environment = "Prod"
  }
}

#Create DynamoDB table
resource "aws_dynamodb_table" "statelock" {
  name         = "state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}