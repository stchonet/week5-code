output "my-public-ip" {
  value = aws_lightsail_instance.myserver.public_ip_address
}
output "my-username" {
  value = aws_lightsail_instance.myserver.username
}

output "my-key" {
  value = aws_lightsail_instance.myserver.key_pair_name
}

