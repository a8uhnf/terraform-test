resource "helm_release" "nginx" {
  name      = "nginx"
  chart     = "stable/nginx-ingress"
  namespace = "kube-system"
}

resource "helm_release" "joomla" {
  name  = "ingress-example"
  chart = "stable/joomla"
}

resource "helm_release" "kube-lego" {
  name      = "kube-lego"
  chart     = "stable/kube-lego"
  namespace = "kube-system"

  set {
    name  = "config.LEGO_EMAIL"
    value = "${var.email}"
  }

  set {
    name  = "config.LEGO_URL"
    value = "https://acme-v01.api.letsencrypt.org/directory"
  }
}
