variable "application" {}
variable "stage" {}

output "streams" {
  value = {
    courses    = "${aws_dynamodb_table.courses.stream_arn}"
    resources  = "${aws_dynamodb_table.resources.stream_arn}"
    bookmarks  = "${aws_dynamodb_table.bookmarks.stream_arn}"
    identities = "${aws_dynamodb_table.identities.stream_arn}"
    profiles   = "${aws_dynamodb_table.profiles.stream_arn}"
  }
}
