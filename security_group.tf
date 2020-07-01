#Security Group for Bastion Host
resource "aws_security_group" "P1-Bastion-Host-SG" {
  name        = "Bastion Host SG"
  description = "Allow Inbound traffic from internet to port 22 of Bastion Host"
  vpc_id      = aws_vpc.P1-VPC.id

  ingress {
    description = "Inbound traffic from internet to port 22 of Bastion Host"
    from_port   = var.sg-ports[0]
    to_port     = var.sg-ports[0]
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "tcp"
  }
  egress {
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "-1"
  }

  tags = {
    Name    = "P1-Bastion Host SG"
    Purpose = "Implement AWS infrastructure to AWS using Terraform"
    Project = "P1"
  }
}

#Security Group for External Load Balancer
resource "aws_security_group" "P1-ExtLB-SG" {
  name        = "ExtLB Security group"
  description = "Allow Inbound traffic from internet to port 80 of External Load Balancer"
  vpc_id      = aws_vpc.P1-VPC.id

  ingress {
    description = "Inbound traffic from internet to External Load Balancer"
    from_port   = var.sg-ports[1]
    to_port     = var.sg-ports[1]
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "tcp"
  }

  egress {
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "-1"
  }
  tags = {
    Name    = "P1-ExtLB SG"
    Purpose = "Implement AWS infrastructure to AWS using Terraform"
    Project = "P1"
  }
}

#Security Group for WEB Servers
resource "aws_security_group" "P1-WEB-Server-SG" {
  name        = "WEB Server Security group"
  description = "Allow Inbound traffic from Load Balancer and Bastion Host to WEB Servers"
  vpc_id      = aws_vpc.P1-VPC.id

  ingress {
    description     = "Inbound traffic from External Load Balancer to WEB Servers"
    from_port       = var.sg-ports[1]
    to_port         = var.sg-ports[1]
    security_groups = [aws_security_group.P1-ExtLB-SG.id]
    protocol        = "tcp"
  }

  ingress {
    description     = "Inbound traffic from Bastion Host to WEB Servers"
    from_port       = var.sg-ports[0]
    to_port         = var.sg-ports[0]
    security_groups = [aws_security_group.P1-Bastion-Host-SG.id]
    protocol        = "tcp"
  }

  egress {
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
    protocol    = "-1"
  }

  tags = {
    Name    = "P1-WEB Server SG"
    Purpose = "Implement AWS infrastructure to AWS using Terraform"
    Project = "P1"
  }
}



