module "network" {
  source              = "../modules/network"
  resource_group_name = var.resource_group_name
  environment         = var.environment
  location            = var.location
}