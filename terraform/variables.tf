variable "aws_region" {
    description = "The AWS region to deploy resources in"
    type        = string
    default     = "us-east-1"
}

variable "project_name" {
    description = "The name of the project"
    type        = string
    default     = ""
}

variable "environment" {
    description = "The deployment environment (e.g., dev, staging, prod)"
    type        = string
    default     = "dev"
}

variable "role_arn" {
    description = "The ARN of the IAM role to assume (AWS Academy)"
    type        = string
}

variable "s3_backend_bucket" {
    description = "The S3 bucket name for Terraform backend"
    type        = string
}