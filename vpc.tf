#VPC resource
resource "aws_vpc" "P1-VPC" {
  cidr_block           = var.vpc_cidr_block
  instance_tenancy     = var.vpc_tenancy
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name    = "P1-VPC"
    Purpose = "Implement AWS infrastructure to AWS using Terraform"
    Project = "P1"
  }
}

#Internet Gateway
resource "aws_internet_gateway" "P1-IG" {
  vpc_id = aws_vpc.P1-VPC.id

  tags = {
    Name    = "P1-Internet Gateway"
    Purpose = "Implement AWS infrastructure to AWS using Terraform"
    Project = "P1"
  }
}
