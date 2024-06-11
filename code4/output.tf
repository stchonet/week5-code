output "my_public_ip_address" {
  value = aws_lightsail_instance.custom.public_ip_address

}

output "my-private" {
  value = aws_lightsail_instance.custom.private_ip_address
}