provider "helm" {
  kubernetes {
#     config_path = "~/.kube/config"
    }
}

resource "helm_release" "helloworld" {
  count = var.enabled
  namespace = var.namespace
  name       = "helloworld"
  repository = "https://chicagozer.github.io/helm-chart/"
  chart      = "helloworld"
  version    = "${lookup(var.chart_version,"helloworld")}"
  create_namespace = true
  
  set {
    name  = "image.tag"
    value = "${lookup(var.app_version,"helloworld")}"
  }
  set {
    name  = "image.repository"
    value = var.repository
  }
  set {
    name  = "service.port"
    value = var.service_port
  }
  set {
    name  = "service.type"
    value = var.service_type
  }
}
