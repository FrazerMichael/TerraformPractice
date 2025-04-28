{
    "Version": "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Action": [
                    "ecr:DescribeImages"
                ],
                "Resource": "arn:aws:ecs:us-east-1:423623848303:service/DevCluster/*"
            },
            {
                "Effect": "Allow",
                "Action": [
                    "ecs:DescribeServices"
                ],
                "Resource": "arn:aws:ecs:us-east-1:423623848303:service/DevCluster/*"
            },
            {
                "Effect": "Allow",
                "Action": [
                    "ssm:PutParameter"
                ],
                "Resource": "arn:aws:ssm:us-east-1:423623848303:parameter/ecs-services/version/*"
            },
            {
                "Effect": "Allow",
                "Action": [
                    "s3:GetObject",
                    "s3:GetObjectVersion"
                ],
                "Resource": "arn:aws:s3:::test-use1-lambda-functions/*"
            }
        ]
}