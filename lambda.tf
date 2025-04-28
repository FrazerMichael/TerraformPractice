module "lambda" {
  source  = "terraform-aws-modules/lambda/aws"
  version = "7.20.2"

  function_name  = "test-use1-lambda1"
  handler        = "default.lambda_handler"
  runtime        = "python3.12"
  create_role    = false
  lambda_role    = module.iam_iam-assumable-role.iam_role_arn
  timeout        = 30
  create_package = false

  s3_existing_package = {
    bucket     = "test-use1-lambda-functions"
    key        = "default.zip"
    version_id = null
  }
}