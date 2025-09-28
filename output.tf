output "ec2_instance_public_ip" {
  value = aws_instance.my-instance.public_ip
}
