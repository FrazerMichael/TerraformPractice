module "iam_iam-assumable-role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"
  version = "5.55.0"

  role_name         = "lambda_role"
  create_role       = true
  role_requires_mfa = false

  custom_role_policy_arns = [
    module.iam_iam-policy.arn
  ]

  trusted_role_services = [
    "lambda.amazonaws.com"
  ]
}

module "iam_iam-policy" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-policy"
  version = "5.55.0"

  name   = "lambda-policy-1"
  policy = templatefile("${path.module}/policies/lambda-policy-1.json.tpl", {})
}

