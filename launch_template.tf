#Launch Template for WEB Server
resource "aws_launch_template" "P1-WEB-Server-Launch-Template" {
  name                    = "LaunchTemplate-WEB_Server"
  description             = "This template will be used to launch WEB Servers"
  disable_api_termination = false
  image_id                = data.aws_ami.WEB-Server-Ami-Data.id
  instance_type           = var.web-server-instance-type
  key_name                = aws_key_pair.P1-Key-Pair.key_name
  vpc_security_group_ids  = [aws_security_group.P1-WEB-Server-SG.id]
  user_data               = filebase64(var.WEB-Server-user-data-path)
  monitoring {
    enabled = true
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name    = "P1-WEB Server"
      Purpose = "Implement AWS infrastructure to AWS using Terraform"
      Project = "P1"
      Source  = "Autoscaling Group"
    }
  }
  tags = {
    Name    = "P1-WEB Server Launch Template"
    Purpose = "Implement AWS infrastructure to AWS using Terraform"
    Project = "P1"
  }
}

