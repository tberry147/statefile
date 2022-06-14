
resource "aws_s3_bucket" "s3-state" {
  count  = length(var.bucket_name)
  bucket = var.bucket_name[count.index]

}

resource "aws_dynamodb_table" "dynamo-state" {
  name           = var.dynamo_table
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }

}
