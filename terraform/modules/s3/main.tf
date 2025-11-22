
resource "aws_s3_bucket" "landing_bucket" {
    bucket = "${var.project_namela}-${var.environment}-landing-${var.bucket_suffix}"
    force_destroy = true
}

resource "aws_s3_bucket_cors_configuration" "landing_cors" {
    bucket = aws_s3_bucket.landing_bucket.id

    cors_rule {
        allowed_headers = ["*"]
        allowed_methods = ["GET", "PUT", "POST", "DELETE", "HEAD"]
        allowed_origins = ["*"]
        expose_headers =  ["ETag"]
        max_age_seconds = 3000
    }
}

resource "aws_s3_bucket_public_access_block" "landing_public_block" {
    bucket = aws_s3_bucket.landing_bucket.id

    block_public_acls = true
    ignore_public_acls = true
    block_public_policy = true
    restrict_public_buckets = true
}

resource "aws_s3_bucket_notification" "bucket_notification" {
    bucket = aws_s3_bucket.landing_bucket.id
    eventbridge = true
}