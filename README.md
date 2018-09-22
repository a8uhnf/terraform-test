# terraform-test
Testing terraform with k8s

To Up and Running desire cluster

```console
terraform apply -var 'email=<YOUR-EMAIL_ADDRESS>' -var 'cluster_name=<CLUSTER-NAME>' -var 'project=<PROJECT-ID>' -var 'node_number=<NODE-COUNT>' -var 'region=<ZONE>'
```

To teardown

```console
terraform destroy -var 'email=<YOUR-EMAIL_ADDRESS>' -var 'cluster_name=<CLUSTER-NAME>' -var 'project=<PROJECT-ID>' -var 'node_number=<NODE-COUNT>' -var 'region=<ZONE>
```
