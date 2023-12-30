output "public_ip_of_new_ec2" {
    value = aws_instance.lamha.public_ip
}

output "private_ip_of_the_same" {
    value = aws_instance.lamha.private_ip
}
