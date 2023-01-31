resource "null_resource" "test" {
  provisioner "local-exec" {
    command = <<EOT
az login --service-principal -u $ARM_CLIENT_ID -p $ARM_CLIENT_SECRET -t $ARM_TENANT_ID
EOT
  }
}