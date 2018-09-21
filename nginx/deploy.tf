resource "helm_release" "nginx" {
  name      = "nginx"
  chart     = "stable/nginx-ingress"
  namespace = "kube-system"
}

resource "helm_release" "joomla" {
  name  = "ingress-example"
  chart = "stable/joomla"
}
