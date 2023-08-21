resource "azurerm_virtual_network" "ntier_vnet" {
  name                = "vnet"
  resource_group_name = var.resource_group_name
  address_space       = [var.network_range]
  location            = var.location

 
}


resource "azurerm_subnet" "subnets" {
  count                = length(var.subnet_names)
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.ntier_vnet.name
  # get the address prefix based on count from variable subnet_address_prefixes
  address_prefixes = [cidrsubnet(var.network_range, 8, count.index)]
  # get the name based on count from variable subnet_names
  name = var.subnet_names[count.index]

  depends_on = [
   
    azurerm_virtual_network.ntier_vnet
  ]

}