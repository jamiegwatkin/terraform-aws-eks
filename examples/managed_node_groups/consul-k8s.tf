resource "helm_release" "example" {
  name       = "consul"
  repository = "https://helm.releases.hashicorp.com"
  chart      = "consul"
  version    = "0.33.0"

  values = [
    "${file("values.yaml")}"
  ]
}