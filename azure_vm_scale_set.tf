resource "azurerm_virtual_machine_scale_set" "vmss" {
  name                = "example-vmss"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  upgrade_policy_mode = "Manual"

  sku {
    name     = "Standard_DS1_v2"
    tier     = "Standard"
    capacity = 2
  }

  os_profile {
    computer_name_prefix = "vmss-ex-"
    admin_username       = "adminuser"
    admin_password       = "Password1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  network_profile {
    name    = "exampleNetworkProfile"
    primary = true

    ip_configuration {
      name                                   = "IPConfiguration"
      subnet_id                              = azurerm_subnet.subnet.id
      load_balancer_backend_address_pool_ids = [azurerm_lb_backend_address_pool.bap.id]
    }
  }
}

resource "azurerm_lb_backend_address_pool" "bap" {
  resource_group_name = azurerm_resource_group.rg.name
  load_balancer_id    = azurerm_lb.lb.id
  name                = "example-bap"
}