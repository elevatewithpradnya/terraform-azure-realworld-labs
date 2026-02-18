resource "azurerm_virtual_machine" "spoke_vm" {
  name                  = "spoke-vm"
  location              = azurerm_resource_group.hub_rg.location
  resource_group_name   = azurerm_resource_group.hub_rg.name
  network_interface_ids = [azurerm_network_interface.hub_nic.id]
  vm_size               = "Standard_DS1_v2"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "spoke-os-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "spokevm"
    admin_username = var.spoke_admin_username
    admin_password = var.spoke_admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}