module "s3_landing" {
    source = "./modules/s3"

    project_name = var.project_name
    environment  = var.environment
    bucket_suffix = "siip"
}