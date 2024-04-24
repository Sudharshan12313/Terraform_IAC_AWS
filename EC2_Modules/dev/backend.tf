# Create S3 bucket
resource "aws_s3_bucket" "mybucket" {
  bucket = "s3statebackend4231new"
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

    object_lock_configuration {
        object_lock_enabled = "Enabled"
    }
}

# Create Dynamo table

resource "aws_dynamodb_table" "statelock" {
  name           = "state-lock"
 # billing_mode   = "PAY_PER_REQUEST"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}