resource "azurerm_management_lock" "lock" {
count = "${length(var.resource_Id) ? 1 : 0}"
  name       = "${var.resource_Id}"
  scope      = "${var.resource_Id}"
  lock_level = "CanNotDelete"
  notes      = "Locked to prevent accidental deletion"
}