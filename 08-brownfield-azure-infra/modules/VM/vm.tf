resource "azurerm_virtual_machine" "vm" {
  location                     = var.location
  name                         = "vm-linux-01"
  network_interface_ids        = ["/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Network/networkInterfaces/vm-linux-01679"]
  primary_network_interface_id = null
  proximity_placement_group_id = null
  resource_group_name          = var.resource_group_name
  tags                         = {}
  vm_size                      = "Standard_B1s"
  zones                        = []
  additional_capabilities {ultra_ssd_enabled = false}
  boot_diagnostics {
    enabled     = true
    storage_uri = ""
  }
  os_profile {
    admin_password = null # sensitive
    admin_username = "azureuser"
    computer_name  = "vm-linux-01"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  storage_image_reference {
    id        = null
    offer     = "ubuntu-24_04-lts"
    publisher = "canonical"
    sku       = "server"
    version   = "latest"
  }
  storage_os_disk {
    caching                   = "ReadWrite"
    create_option             = "FromImage"
    disk_size_gb              = 30
    managed_disk_id           = "/subscriptions/a96db7f9-f077-48d6-9d2e-68075185bc77/resourceGroups/Vnet/providers/Microsoft.Compute/disks/vm-linux-01_OsDisk_1_29984ae0722648f391550a95b4689c10"
    managed_disk_type         = "Standard_LRS"
    name                      = "vm-linux-01_OsDisk_1_29984ae0722648f391550a95b4689c10"
    os_type                   = "Linux"
    write_accelerator_enabled = false
  }
}

