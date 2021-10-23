resource "azurerm_virtual_network" "vnet" {
  name = "scb_vnet"
  address_space = [ "10.0.0.0/16" ]
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

}
resource "azurerm_subnet" "app_subnet" {
  name ="app_subnet01"
  address_prefixes = [ "10.0.1.0/24" ]
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
}