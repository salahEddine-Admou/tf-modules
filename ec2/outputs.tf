output "public_instance_id" {
  value = aws_instance.public.id
}

output "private_instance1_id" {
  value = aws_instance.private1.id
}

output "private_instance2_id" {
  value = aws_instance.private2.id
}
