variable "prefix" {}
variable "environment" {}
variable "location" {}
variable "vm_count" {
  default = 2
}
resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-tfe-rg-${count.index}"
  location = "${var.location}"
  count    = var.vm_count
  tags = {
    "environment" = "${var.environment}"
  }
}
