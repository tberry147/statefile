
output "bucket_name" {
  description = "Name of all buckets"
  value       = aws_s3_bucket.s3-state.*.bucket
}