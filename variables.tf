variable "buckets" {
  default = {
    "s3-test-use1-lambda-functions" = {
      name_suffix = "lambda-functions"
    }
  }
}