output "vm_name" {
  value = lower(azurerm_virtual_machine.main[0].name)
}

output "vm_tags" {
  value = join(", ", [for key, value in azurerm_virtual_machine.main[0].tags : "${key}=${value}"])
}

output "vm_ids" {
  value = azurerm_virtual_machine.main[*].id
}
