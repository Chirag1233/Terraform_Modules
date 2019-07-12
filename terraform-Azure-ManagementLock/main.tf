resource "azurerm_management_lock" "lock" {
  count      = "${length(var.resource_Id)}"
  name       = "${element(var.resource_Id, count.index)}-lock"
  scope      = "${element(var.resource_Id, count.index)}"
  lock_level = "CanNotDelete"
  notes      = "Locked to prevent accidental deletion"
}
