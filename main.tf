resource "helm_release" "wordpress" {
  name             = var.name
  chart            = "${path.module}/myapp"
  namespace        = "wordpress"
  wait             = false
  depends_on       = {kubernetes_namespace.wordpress}
  values           = var.values
}