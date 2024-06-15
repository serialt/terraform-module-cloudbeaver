module "pgadmin4" {
  source = "../"

  namespace = "default"
  virtualService = {
    enabled = true
    istioNamespace = "istio-system"
    istioGateways = ["istio-system/gateway-private"]
    domainNames = ["cloudbeaver.prod.local.com"]
  }
}
