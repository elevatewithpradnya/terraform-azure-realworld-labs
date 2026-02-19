resource "azurerm_virtual_machine" "app_vm" {
  name                  = "app-vm"
  location              = var.location
  resource_group_name   = var.rg_name
  network_interface_ids = [azurerm_network_interface.spoke_nic.id]
  vm_size               = "Standard_B1s"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "app-os-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "appvm"
    admin_username = var.spoke_admin_username
    admin_password = var.spoke_admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
  depends_on = [ azurerm_subnet.spoke_appsubnet ]
}

resource "azurerm_network_interface" "app_nic" {
  name                = "app-nic"
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.spoke_appsubnet.id
    private_ip_address_allocation = "Dynamic"
  }
  depends_on = [ azurerm_subnet.spoke_appsubnet ]
   
}