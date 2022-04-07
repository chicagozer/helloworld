provider "helm" {
  kubernetes {
#     config_path = "~/.kube/config"
    }
}

resource "helm_release" "helloworld" {
  namespace = var.namespace
  name       = "helloworld"
  repository = "https://chicagozer.github.io/helm-chart/"
  chart      = "helloworld"
  
  set {
    name  = "image.tag"
    value = "${lookup(var.app_version,"helloworld")}"
  }
  set {
    name  = "image.repository"
    value = var.repository
  }
}
