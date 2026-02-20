resource "azurerm_linux_web_app" "webapp" {
  name                = "${var.rg_name}webapp"
  resource_group_name = var.rg_name
  location            = var.location
  service_plan_id     = azurerm_app_service_plan.appserviceplan.id

  identity {
    type = "SystemAssigned"
  }

  site_config {
         application_stack {
            docker_registry_url = "${azurerm_container_registry.acr.login_server}"
            docker_image_name = "${azurerm_container_registry.acr.login_server}/webapp:latest"
             
}
always_on = "true"

} 
 app_settings = { 
    "DOCKER_REGISTRY_SERVER_URL" = "${azurerm_container_registry.acr.login_server}",
    "DOCKER_REGISTRY_SERVER_USERNAME" = "${azurerm_container_registry.acr.admin_username}",
    "DOCKER_REGISTRY_SERVER_PASSWORD" = "${azurerm_container_registry.acr.admin_password}"
    websites_port = "80"
  }
}