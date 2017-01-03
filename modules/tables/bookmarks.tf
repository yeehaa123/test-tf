resource "aws_dynamodb_table" "bookmarks" {
  name = "${var.application}-bookmarks-${var.stage}"
  read_capacity = 1
  write_capacity = 1
  hash_key = "resource-url"
  range_key = "offcourse-id"
  stream_enabled = true
  stream_view_type = "NEW_AND_OLD_IMAGES"
  attribute {
    name = "resource-url"
    type = "S"
  }
  attribute {
    name = "offcourse-id"
    type = "S"
  }
}
