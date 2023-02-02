variable "helm_namespace" {}

variable "helm_release_name" {
  default = "argo-workflows"
}

variable "helm_chart" {
  default = "argo-workflows"
}

variable "helm_repository" {
  default = "https://argoproj.github.io/argo-helm"
}

variable "helm_repository_password" {
  type        = string
  nullable    = false
  default     = ""
  description = "The password of the repository where the Helm chart is stored"
  sensitive   = true
}

variable "helm_repository_username" {
  type        = string
  nullable    = false
  default     = ""
  description = "The username of the repository where the Helm chart is stored"
  sensitive   = true
}

variable "chart_version" {
  default = "0.8.0"
}

variable "values" {
  default = ""
  type    = string
}
