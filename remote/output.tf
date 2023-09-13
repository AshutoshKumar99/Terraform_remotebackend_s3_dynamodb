output "public_ip" {
    description = "This is public IP"
  value = aws_instance.web1.public_ip
}

output "private_ip" {
    description = "This is private IP"
  value = aws_instance.web1.private_ip
}
