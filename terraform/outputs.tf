output "vpc_id" {
  value = aws_vpc.main.id
}

output "igw_id" {
  value = aws_internet_gateway.gw.id
}

output "server_public_ip" {
  value = aws_instance.web_server.public_ip
}
