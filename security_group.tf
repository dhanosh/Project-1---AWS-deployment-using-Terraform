#Security Group for Bastion Host
resource "aws_security_group" "P1-Bastion-Host-SG" {
  name        = "Bastion Host SG"
  description = "Allow Inbound traffic from internet to port 22 of Bastion Host"
  vpc_id      = aws_vpc.P1-VPC.id

  ingress {
    description = "Inbound traffic from internet to port 22 of Bastion Host"
    from_port   = var.sg-ports[0]
    to_port     = var.sg-ports[0]
    cidr_block  = ["0.0.0.0/0"]
    protocol    = "tcp"
  }
  egress {
    from_port  = var.sg-ports[0]
    to_port    = var.sg-ports[0]
    cidr_block = ["0.0.0.0/0"]
    protocol   = "-1"
  }

  tags = {
    Name    = "P1-Internet Gateway"
    Purpose = "Implement AWS infrastructure to AWS using Terraform"
    Project = "P1"
  }
}

