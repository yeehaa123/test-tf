resource "aws_dynamodb_table" "resources" {
  name = "${var.application}-resources-${var.stage}"
  read_capacity = 1
  write_capacity = 1
  hash_key = "resource-url"
  stream_enabled = true
  stream_view_type = "NEW_AND_OLD_IMAGES"
  attribute {
    name = "resource-url"
    type = "S"
  }
}
