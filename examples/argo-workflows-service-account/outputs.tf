# Name of the Helm Namespace
output "helm_namespace" {
  value = module.argo-workflows-service-account.helm_namespace
}
