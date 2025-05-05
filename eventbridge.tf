module "eventbridge" {
  source  = "terraform-aws-modules/eventbridge/aws"
  version = "3.16.0"

  create_bus = false

  rules = {
    ecs-service-update = {
        description = "ECS Service Update"
        state       = "ENABLED"
        event_pattern = jsonencode({"source": ["aws.ecs"], "detail-type": ["ECS Deployment State Change"], "detail": { "eventName": ["SERVICE_DEPLOYMENT_COMPLETED"]}})
    }
  }
}