module "resource_group" {
  source   = "./modules/resource_group"
  prefix   = "demo"
  location = "eastus"
}

module "network" {
  source              = "./modules/az_virtual_network"
  resource_group_name = module.resource_group.resource_group_name
  prefix              = "demo"
  location            = "eastus"

}

module "subnet" {
  source              = "./modules/azurerm_subnet"
  resource_group_name = module.resource_group.resource_group_name
  virtual_network_name = module.network.virtual_network_name

}

module "network_interface" {
  source              = "./modules/network_interface"
  prefix              = "demo"
  location            = "eastus"
  resource_group_name = module.resource_group.resource_group_name
  subnet_id = module.subnet.azurerm_subnet_id

}

module "virtual_machine" {
  source              = "./modules/virtual_machine"
  prefix              = "demo"
  location            = "eastus"
  resource_group_name = module.resource_group.resource_group_name
  network_interface_id = module.network_interface.network_interface_id

}