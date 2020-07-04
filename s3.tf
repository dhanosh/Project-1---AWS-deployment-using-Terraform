#S3 Bucket for ALB Access logs
#Account number needs to be added in the S3 Policy text document when implementing
resource "aws_s3_bucket" "P1-Ext-LB-logs" {
bucket = "p1extlblogs"
policy = file(var.s3-lb-log-policy-path)
}
