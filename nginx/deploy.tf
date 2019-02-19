# resource "helm_release" "nginx" {
#   name      = "nginx"
#   chart     = "stable/nginx-ingress"
#   namespace = "kube-system"

#   set {
#     name  = "controller.ingressClass"
#     value = "gce"
#   }
# }

# #resource "helm_release" "joomla" {
# #  name  = "ingress-example"
# #  chart = "stable/joomla"
# #}

# resource "kubernetes_service_account" "kube-lego-sa" {
#   metadata {
#     name      = "kube-lego-sa"
#     namespace = "kube-system"
#   }

#   provisioner "local-exec" {
#     command = "kubectl create clusterrolebinding kube-lego-bind --clusterrole=cluster-admin --serviceaccount kube-system:kube-lego-sa"
#   }
# }

# resource "helm_release" "kube-lego" {
#   name      = "kube-lego"
#   chart     = "stable/kube-lego"
#   namespace = "kube-system"

#   set {
#     name  = "config.LEGO_EMAIL"
#     value = "${var.email}"
#   }

#   set {
#     name  = "config.LEGO_URL"
#     value = "https://acme-v01.api.letsencrypt.org/directory"
#   }

#   set {
#     name  = "rbac.create"
#     value = "true"
#   }
# }
