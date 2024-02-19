provider "azurerm" {
  version = "=2.40.0"
  features {}
}

module "aks" {
  source = "./modules/aks"

  resource_group_name = var.resource_group_name
  location            = var.location
  cluster_name        = var.cluster_name
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  vm_size             = var.vm_size
  environment         = var.environment
}

module "helm" {
  source = "./modules/helm"

  host                   = module.aks.kube_config.0.host
  client_certificate     = module.aks.kube_config.0.client_certificate
  client_key             = module.aks.kube_config.0.client_key
  cluster_ca_certificate = module.aks.kube_config.0.cluster_ca_certificate
}

module "network_policy" {
  source = "./modules/network_policy"

  app_label     = var.app_label
  ingress_label = var.ingress_label
}
