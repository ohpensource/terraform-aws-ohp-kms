locals {
  alias        = var.alias == null ? var.name : var.alias
  create_alias = var.create_alias ? 1 : 0
}
