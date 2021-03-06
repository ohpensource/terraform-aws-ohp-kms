resource "aws_kms_key" "main" {
  description                        = var.description
  deletion_window_in_days            = var.kms_deletion_window_in_days
  key_usage                          = var.key_usage
  customer_master_key_spec           = var.customer_master_key_spec
  policy                             = var.kms_policy
  enable_key_rotation                = var.enable_key_rotation
  is_enabled                         = var.is_enabled
  bypass_policy_lockout_safety_check = var.bypass_policy_lockout_safety_check

  tags = merge(var.tags,
    tomap({ "Name" = local.alias })
  )
}

resource "aws_kms_alias" "main" {
  count         = local.create_alias
  name          = "alias/${local.alias}"
  target_key_id = aws_kms_key.main.key_id
}
