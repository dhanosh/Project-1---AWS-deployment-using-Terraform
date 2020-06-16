resource "aws_vpc" "P1-VPC" {
	cidr_block = var.vpc_cidr_block
	instance_tenancy = var.vpc_tenancy

	tags = {
		Name = "P1-VPC"
		Purpose = "Implement AWS infrastructure to AWS using Terraform"
		Project = "P1"
	}
}
