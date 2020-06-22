#VPC ID
output "vpc_id" {
  value       = aws_vpc.P1-VPC.id
  description = "VPC ID : "
}

#Public Subnet ID
output "public_subnet_id" {
  value       = aws_subnet.P1-Pub-Subnet.id
  description = "Public Subnet ID : "
}

#WEB Server Subnet ID
output "web_server_subnet_id" {
  value       = aws_subnet.P1-Web-Priv-Subnet.id
  description = "Web Server Subnet ID : "
}

#Internal Load Balancer ID
output "internallb_priv_subnet_id" {
  value       = aws_subnet.P1-IntLB-Priv-Subnet.id
  description = "Internal Loadbalancer ID :"
}

#APP Server Subnet ID
output "app_server_subnet_id" {
  value       = aws_subnet.P1-App-Priv-Subnet.id
  description = "App Server Subnet ID : "
}

#RDS Subnet ID
output "rds_subnet_id" {
  value       = aws_subnet.P1-DB-Priv-Subnet.id
  description = "RDS Server Subnet ID : "
}



