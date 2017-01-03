variable "application" {}
variable "stage" {}

resource "aws_s3_bucket" "raw" {
  bucket = "${var.application}-raw-data-${var.stage}"

  tags {
    Name = "${var.application}"
    Environment = "${var.stage}"
  }
}

data "aws_iam_policy_document" "raw" {
  statement {
    principals = [
      {
        type = "AWS"
        identifiers = ["*"]
      }
    ]
    actions = [
      "s3:PutObject",
    ]
    resources = [
      "${aws_s3_bucket.raw.arn}/*"
    ]
  }
}

resource "aws_s3_bucket_policy" "raw" {
  bucket = "${aws_s3_bucket.raw.id}"
  policy = "${data.aws_iam_policy_document.raw.json}"
}
