# resource "helm_release" "mysql" {
#   name  = "mysql"
#   chart = "stable/mysql"

#   set {
#     name  = "mysqlRootPassword"
#     value = "secretpassword"
#   }

#   set {
#     name  = "mysqlUser"
#     value = "my-user"
#   }

#   set {
#     name  = "mysqlPassword"
#     value = "my-password"
#   }

#   set {
#     name  = "mysqlDatabase"
#     value = "my-database"
#   }
# }
