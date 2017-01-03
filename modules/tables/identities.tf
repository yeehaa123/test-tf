resource "aws_dynamodb_table" "identities" {
  name = "${var.application}-identities-${var.stage}"
  read_capacity = 1
  write_capacity = 1
  hash_key = "auth-id"
  stream_enabled = true
  stream_view_type = "NEW_AND_OLD_IMAGES"
  attribute {
    name = "auth-id"
    type = "S"
  }
}
