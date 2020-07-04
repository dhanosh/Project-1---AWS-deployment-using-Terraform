#External Load Balancer
resource "aws_lb" "P1-ExtLB" {
  name                             = "P1-ExtLB"
  internal                         = false
  load_balancer_type               = "application"
  subnets                          = [aws_subnet.P1-Pub-Subnet[0].id, aws_subnet.P1-Pub-Subnet[1].id]
  security_groups                  = [aws_security_group.P1-ExtLB-SG.id]
  enable_cross_zone_load_balancing = false
  access_logs {
    bucket  = aws_s3_bucket.P1-Ext-LB-logs.bucket
    prefix  = "Ext-LB-Logs"
    enabled = true
  }
  tags = {
    Name    = "P1-Exteral Load Balancer"
    Purpose = "Implement AWS infrastructure to AWS using Terraform"
    Project = "P1"
  }
}

