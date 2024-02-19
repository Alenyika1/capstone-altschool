variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
}

variable "dns_prefix" {
  description = "The DNS prefix for the Kubernetes cluster"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the Kubernetes cluster"
  type        = number
}

variable "vm_size" {
  description = "The size of the virtual machines in the Kubernetes cluster"
  type        = string
}

variable "environment" {
  description = "The environment tag for the resources"
  type        = string
}

variable "app_label" {
  description = "The label of the application pods that the network policy applies to"
  type        = string
}

variable "ingress_label" {
  description = "The label of the pods that are allowed to send traffic to the application pods"
  type        = string
  default     = "app.kubernetes.io/name=ingress-nginx"
}
