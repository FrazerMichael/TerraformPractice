module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.7.0"

  for_each = var.buckets
  bucket   = "test-use1-${each.value.name_suffix}"
}