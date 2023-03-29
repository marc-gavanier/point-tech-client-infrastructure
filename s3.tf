resource "aws_s3_bucket" "client" {
  bucket        = replace("${local.product_information.context.product}_${local.product_information.context.service}", "_", "-")
  force_destroy = true
  tags          = local.tags
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.client.id
  acl    = "private"
}

data "aws_iam_policy_document" "allow_client_website_access_from_internet" {
  statement {
    sid    = "PublicReadGetObject"
    effect = "Allow"

    actions = [
      "s3:GetObject",
    ]

    principals {
      type        = "*"
      identifiers = ["*"]
    }

    resources = [
      "${aws_s3_bucket.client.arn}/*",
    ]
  }
}
