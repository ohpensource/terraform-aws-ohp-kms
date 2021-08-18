resource "aws_kms_key" "main" {
  description              = var.name
  deletion_window_in_days  = var.kms_deletion_window_in_days
  key_usage                = var.key_usage
  customer_master_key_spec = var.customer_master_key_spec
  policy                   = var.kms_policy
  enable_key_rotation      = var.enable_key_rotation

  tags = merge(var.tags,
    tomap({ "Name" = var.name })
  )
}

resource "aws_kms_alias" "main" {
  count         = local.create_alias
  name          = "alias/${local.alias}"
  target_key_id = aws_kms_key.main.key_id
}
