#VPC ARN
output "vpc_Arn" {
  value       = aws_vpc.P1-VPC.arn
  description = "VPC ARN : "
}

#VPC ID
output "vpc_id" {
  value       = aws_vpc.P1-VPC.id
  description = "VPC ID : "
}

#Public Subnet ARN
output "public_subnet_arn" {
  value       = aws_subnet.P1-Pub-Subnet.arn
  description = "Public Subnet ARN : "
}

#Public Subnet ID
output "public_subnet_id" {
  value       = aws_subnet.P1-Pub-Subnet.id
  description = "Public Subnet ID : "
}

#Web Server Subnet arn
output "web_Server_subnet_arn" {
  value       = aws_subnet.P1-Web-Priv-Subnet.arn
  description = "Web Server Subnet ARN : "
}

#Web Server Subnet ID
output "web_server_subnet_id" {
  value       = aws_subnet.P1-Web-Priv-Subnet.id
  description = "Web Server Subnet ID : "
}

#Internal Load Balncer arn
output "internallb_priv_subnet_arn" {
  value       = aws_subnet.P1-IntLB-Priv-Subnet.arn
  description = "Internal LoadBalancer ARN : "
}

#Internal Load Balancer ID
output "internallb_priv_subnet_id" {
  value       = aws_subnet.P1-IntLB-Priv-Subnet.id
  description = "Internal Loadbalancer ID :"
}

#APP Server Subnet arn
output "app_server_subnet_arn" {
  value       = aws_subnet.P1-App-Priv-Subnet.arn
  description = "App Server Subnet ARN : "
}

#APP Server Subnet ID
output "app_server_subnet_id" {
  value       = aws_subnet.P1-App-Priv-Subnet.id
  description = "App Server Subnet ID : "
}

#RDS Subnet arn
output "rds_subnet_arn" {
  value       = aws_subnet.P1-DB-Priv-Subnet.arn
  description = "RDS Subnet ARN : "
}

#RDS Subnet ID
output "rds_subnet_id" {
  value       = aws_subnet.P1-DB-Priv-Subnet.id
  description = "RDS Server Subnet ID : "
}



