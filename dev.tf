provider "azurerm" {
  features {

  }

}
module "network_grp" {
  source              = "./module"
  resource_group_name = "biomd"
  location            = "eastus"
  network_range       = "10.0.0.0/16"
  subnet_names        = ["web","nic"]
}