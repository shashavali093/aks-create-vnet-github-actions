# Create our Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = "aks-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
        environment = "Terraform-Aks-Vnet"
    }
}
/* # Create subnet
resource "azurerm_subnet" "akssubnet" {
    name                 = "aks-subnet1"
    resource_group_name = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefix       = "10.0.1.0/24"
}
resource "azurerm_subnet" "akssubnet2" {
    name                 = "aks-subnet2"
    resource_group_name = var.resource_group_name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefix       = "10.0.2.0/24" 
} */