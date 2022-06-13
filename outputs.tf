output "public_ips" {
  value = aws_instance.instance[*].public_ip
}

output "private_ips" {
  value = aws_instance.instance[*].private_ip
}
