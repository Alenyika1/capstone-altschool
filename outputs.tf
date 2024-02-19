output "kube_config" {
  description = "Kubeconfig for the created AKS cluster"
  value       = module.aks.kube_config
}

output "helm_release_name" {
  description = "Name of the Helm release"
  value       = module.helm.helm_release_name
}

output "network_policy_name" {
  description = "Name of the network policy"
  value       = module.network_policy.network_policy_name
}
