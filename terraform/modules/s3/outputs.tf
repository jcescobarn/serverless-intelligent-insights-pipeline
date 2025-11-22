output "bucket_id" {
    value = aws_s3_bucket.landing_bucket.id
}

output "bucket_arn" {
    value = aws_s3_bucket.landing_bucket.arn
}

output "bucket_name" {
    value = aws_s3_bucket.landing_bucket.bucket
}