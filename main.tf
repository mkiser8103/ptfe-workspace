variable "prefix" {}
variable "environment" {}
variable "location" {}
variable "owner" {}
variable "vm_count" {}
resource "azurerm_resource_group" "main" {
  name     = "${var.prefix}-tfe-rg-${count.index}"
  location = "${var.location}"
  count    = "${var.vm_count}"
  tags = {
    "environment" = "${var.environment}"
    "owner" = "${var.owner}"
  }
}
