resource "helm_release" "my_database" {
  name  = "my_datasase"
  chart = "stable/mariadb"

  set {
    name  = "mariadbUser"
    value = "foo"
  }

  set {
    name  = "mariadbPassword"
    value = "qux"
  }
}
