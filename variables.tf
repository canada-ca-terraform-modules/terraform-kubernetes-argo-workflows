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
  default = ""
}

variable "helm_repository_username" {
  default = ""
}

variable "chart_version" {
  default = "0.8.0"
}

variable "values" {
  default = ""
  type    = string
}
