variable "app_label" {
  description = "The label of the application pods that the network policy applies to"
  type        = string
}

variable "ingress_label" {
  description = "The label of the pods that are allowed to send traffic to the application pods"
  type        = string
  default     = "app.kubernetes.io/name=ingress-nginx"
}
