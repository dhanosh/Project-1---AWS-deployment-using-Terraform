#VPC ID
output "VPC_ID" {
  value       = aws_vpc.P1-VPC.id
  description = "Outputting VPC ID"
}

#Internet Gateway ID
output "Internet_Gatway" {
  value       = aws_internet_gateway.P1-VPC.id
  description = "Outputting Internet Gateway ID"
}

#Public Subnet 1 ID
output "Public_Subnet_1" {
  value       = aws_subnet.P1-Pub-Subnet[0].id
  description = "Outputting Public Subnet 1 ID"
}

#Public Subnet 2 ID
output "Public_Subnet_2" {
  value       = aws_subnet.P1-Pub-Subnet[0].id
  description = "Outputting Public Subnet 2 ID"
}

#Web Private Subnet 1 ID
output "Web_Private_Subnet_1" {
  value       = aws_subnet.P1-Web-Priv-Subnet[0].id
  description = "Outputting Web Server Private Subnet 1 ID"
}

#Web Private Subnet 2 ID
output "Web_Private_Subnet_2" {
  value       = aws_subnet.P1-Web-Priv-Subnet[1].id
  description = "Outputting Web Server Private Subnet 2 ID"
}

#InternalLB Private Subnet 1 ID
output "InternalLB_Priavte_Subnet_1" {
  value       = aws_subnet.P1-IntLB-Priv-Subnet[0].id
  description = "Outputting InternalLB Server Private Subnet 1 ID"
}

#InternalLB Private Subnet 2 ID
output "InternalLB_Private_Subnet_2" {
  value       = aws_subnet.P1-IntLB-Priv-Subnet[1].id
  description = "Outputting InternalLB Server Subnet 2 ID"
}

#App Server Private Subnet 1 ID
output "App_Private_Subnet_1" {
  value       = aws_subnet.P1-App-Priv-Subnet[0].id
  description = "Outputting App Server Private Subnet 1 ID"
}

#App Server Private Subnet 2 ID
output "App_Private_Subnet_2" {
  value       = aws_subnet.P1-App-Priv-Subnet[1].id
  description = "Outputting App Server Private Subnet 2 ID"
}

#RDS Private Subnet 1 ID
output "RDS_Private_Subnet_1" {
  value       = aws_subnet.P1-DB-Priv-Subnet[0].id
  description = "Outputting RDS Private Subnet 1 ID"
}

#RDS Private Subnet 2 ID
output "RDS_Private_Subnet_2" {
  value       = aws_subnet.P1-DB-Priv-Subnet[1].id
  description = "Outputting RDS Private Subnet 2 ID"
}
