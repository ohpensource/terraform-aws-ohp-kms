output "key_arn" {
  value       = aws_kms_key.main.arn
  description = "Key ARN"
}

output "key_id" {
  value       = aws_kms_key.main.key_id
  description = "Key ID"
}

output "alias_arn" {
  value       = aws_kms_alias.main[0].arn
  description = "Alias ARN"
}

output "alias_name" {
  value       = aws_kms_alias.main[0].name
  description = "Alias name"
}
