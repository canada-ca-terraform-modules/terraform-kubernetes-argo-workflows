terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0.0"
    }
  }
  required_version = "~> 1.0.9"
}

 provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_namespace" "argo_workflows_system" {
  metadata {
    name = "argo-workflows-system"
  }
}

module "argo-workflows-service-account" {
  source = "../../"

  depends_on = [resource.kubernetes_namespace.argo_workflows_system]
  helm_namespace = "argo-workflows-system"

  values = <<EOF
workflow:
  serviceAccount:
    create: true
    name: "argo-workflow"
  rbac:
    create: true
EOF
}
