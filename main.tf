terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.99.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "my_rg" {
  name     = "rg-mmuns-network-test-tf"
  location = "Central US"
}

resource "azurerm_network_security_group" "example" {
  name                = "example-security-group"
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name
}

resource "azurerm_virtual_network" "example" {
  name                = "mmuns-tf-network-001"
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "subnet11"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet12"
    address_prefix = "10.0.2.0/24"
    security_group = azurerm_network_security_group.example.id
  }

  tags = {
    "dateDestroy" : "12/12/2024"
  }
  
 }

resource "azurerm_network_interface" "example" {
  name                = "example-nic"
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_virtual_network.example.subnet11.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "example" {
  name                = "mmuns-VM1-test"
  resource_group_name = azurerm_resource_group.my_rg.name
  location            = azurerm_resource_group.my_rg.location
  size                = "Standard_DS1_v2"
  admin_username      = "adminuser"
  admin_password = "Password!!*$*"
  disable_password_authentication = false
  
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  tags = {
    dateDestroy = "12/12/2024"
    nightlyShutdown = "True"
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

}

