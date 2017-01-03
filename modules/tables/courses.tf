resource "aws_dynamodb_table" "courses" {
  name = "${var.application}-courses-${var.stage}"
  read_capacity = 1
  write_capacity = 1
  hash_key = "course-id"
  range_key = "revision"
  stream_enabled = true
  stream_view_type = "NEW_AND_OLD_IMAGES"
  attribute {
    name = "course-id"
    type = "S"
  }
  attribute {
    name = "revision"
    type = "N"
  }
}
