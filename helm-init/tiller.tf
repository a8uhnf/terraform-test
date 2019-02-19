resource "null_resource" "tiller" {
  provisioner "local-exec" {
    command = "kubectl create sa tiller -n kube-system; kubectl create clusterrolebinding tiller --clusterrole=cluster-admin --serviceaccount=kube-system:tiller; helm init --service-account tiller"
  }
}
