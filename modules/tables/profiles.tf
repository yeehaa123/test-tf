resource "aws_dynamodb_table" "profiles" {
  name = "${var.application}-profiles-${var.stage}"
  read_capacity = 1
  write_capacity = 1
  hash_key = "user-name"
  stream_enabled = true
  stream_view_type = "NEW_AND_OLD_IMAGES"
  attribute {
    name = "user-name"
    type = "S"
  }
}
