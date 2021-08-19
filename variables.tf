variable "description" {
  type        = string
  description = "Name to apply to resources."
}

variable "region" { default = "eu-west-1" }

variable "tags" {
  type        = map(any)
  description = "(Required) Map of tags to apply to repository"
}

# KMS
variable "create_alias" {
  type        = bool
  description = "Create KMS key alias"
  default     = true
}
variable "alias" {
  type        = string
  description = "KMS key alias"
  default     = ""
}

variable "is_enabled" {
  type        = bool
  description = "(Optional) Specifies whether the key is enabled"
  default     = true
}

variable "key_usage" {
  description = "Specifies the intended use of the key. Valid values: ENCRYPT_DECRYPT or SIGN_VERIFY"
  default     = "ENCRYPT_DECRYPT"
}
variable "customer_master_key_spec" {
  description = "Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: SYMMETRIC_DEFAULT, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, or ECC_SECG_P256K1"
  default     = "SYMMETRIC_DEFAULT"
}
variable "kms_policy" {
  default     = null
  description = "A valid policy JSON document"
}
variable "kms_deletion_window_in_days" {
  default     = 30
  description = "Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 30 days"
}
variable "enable_key_rotation" {
  default     = true
  description = "Specifies whether key rotation is enabled"
}
