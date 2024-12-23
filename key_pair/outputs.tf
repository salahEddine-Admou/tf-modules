output "public_key_name" {
  value = aws_key_pair.public_key.key_name
}

output "private1_key_name" {
  value = aws_key_pair.private1_key.key_name
}

output "private2_key_name" {
  value = aws_key_pair.private2_key.key_name
}
