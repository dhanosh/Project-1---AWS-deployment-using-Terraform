#VPC ID
output "vpc_id" {
  value       = aws_vpc.P1-VPC.id
  description = "VPC ID : "
}

#Public Subnet-1 ID
output "public_subnet-1_id" {
  value       = aws_subnet.P1-Pub-Subnet[0].id
  description = "Public Subnet-1 ID : "
}

#Public Subnet-2 ID
output "public_subnet-2_id" {
  value       = aws_subnet.P1-Pub-Subnet[1].id
  description = "Public Subnet-1 ID : "
}

#Web Server Subnet-1 ID
output "web_server_subnet-1_id" {
  value       = aws_subnet.P1-Web-Priv-Subnet[0].id
  description = "Web Server Subnet-1 ID : "
}

#Web Server Subnet-2 ID
output "web_server_subnet-2_id" {
  value       = aws_subnet.P1-Web-Priv-Subnet[1].id
  description = "Web Server Subnet-1 ID : "
}

#Internal Load Balancer Subnet-1 ID
output "internallb_priv_subnet-1_id" {
  value       = aws_subnet.P1-IntLB-Priv-Subnet[0].id
  description = "Internal Loadbalancer Subnet-1 ID :"
}

#Internal Load Balancer Subnet-2 ID
output "internallb_priv_subnet-2_id" {
  value       = aws_subnet.P1-IntLB-Priv-Subnet[1].id
  description = "Internal Loadbalancer Subnet-1 ID :"
}

#APP Server Subnet-1 ID
output "app_server_subnet-1_id" {
  value       = aws_subnet.P1-App-Priv-Subnet[0].id
  description = "App Server Subnet-1 ID : "
}

#APP Server Subnet-2 ID
output "app_server_subnet-2_id" {
  value       = aws_subnet.P1-App-Priv-Subnet[1].id
  description = "App Server Subnet-1 ID : "
}

#RDS Subnet-1 ID
output "rds_subnet-1_id" {
  value       = aws_subnet.P1-DB-Priv-Subnet[0].id
  description = "RDS Server Subnet-1 ID : "
}

#RDS Subnet-2 ID
output "rds_subnet-2_id" {
  value       = aws_subnet.P1-DB-Priv-Subnet[1].id
  description = "RDS Server Subnet-1 ID : "
}


output "internet_gateway_id" {
  value       = aws_internet_gateway.P1-IG.id
  description = "Internet Gateway ID :"
}

