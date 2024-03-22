locals {
  cloudbeaver = {
    fullnameOverride = var.name
    tolerations      = var.tolerations
    nodeSelector     = var.nodeSelector

    persistence    = var.persistence
    virtualService = var.virtualService
  }
  VolumePermissions = {
    enabled = false
  }
  resources = var.resources


}

resource "helm_release" "cloudbeaver" {
  name          = var.name
  namespace     = var.namespace
  chart         = var.chart_name
  version       = var.chart_version
  repository    = var.helm_repository
  recreate_pods = true

  values = [yamlencode(local.cloudbeaver)]
}
