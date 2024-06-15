locals {
  cloudbeaver = {
    fullnameOverride = var.name
    image = {
      mirror = var.mirror
      name   = var.image.name
      tag    = var.image.tag
    }
    imagePullSecrets = var.mirror_secret
    tolerations      = var.tolerations
    nodeSelector     = var.nodeSelector

    persistence    = var.persistence
    virtualService = var.virtualService
    resources      = var.resources
  }
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
