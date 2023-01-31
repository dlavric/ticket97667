# ticket97667

Steps:

Export these variables on your terminal

export ARM_TENANT_ID=
export ARM_CLIENT_ID=
export ARM_CLIENT_SECRET=
export ARM_SUBSCRIPTION_ID=

Run `terraform init`

Apply the Terraform code

```
[daniela:~/Downloads/ticket97667] [2.7.1] main* 2s ± terraform apply

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # null_resource.test will be created
  + resource "null_resource" "test" {
      + id = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

null_resource.test: Creating...
null_resource.test: Provisioning with 'local-exec'...
null_resource.test (local-exec): Executing: ["/bin/sh" "-c" "az login --service-principal -u $ARM_CLIENT_ID -p $ARM_CLIENT_SECRET -t $ARM_TENANT_ID\n"]
null_resource.test (local-exec): [
null_resource.test (local-exec):   {
null_resource.test (local-exec):     "cloudName": "AzureCloud",
null_resource.test (local-exec):     "homeTenantId": "xxxxxx",
null_resource.test (local-exec):     "id": "xxxxxx",
null_resource.test (local-exec):     "isDefault": true,
null_resource.test (local-exec):     "managedByTenants": [
null_resource.test (local-exec):       {
null_resource.test (local-exec):         "tenantId": "xxxxxxxxxxx"
null_resource.test (local-exec):       }
null_resource.test (local-exec):     ],
null_resource.test (local-exec):     "name": "Team Support Engineering",
null_resource.test (local-exec):     "state": "Enabled",
null_resource.test (local-exec):     "tenantId": "xxxxxxxxx",
null_resource.test (local-exec):     "user": {
null_resource.test (local-exec):       "name": "xxxxxxx",
null_resource.test (local-exec):       "type": "servicePrincipal"
null_resource.test (local-exec):     }
null_resource.test (local-exec):   }
null_resource.test (local-exec): ]
null_resource.test: Creation complete after 3s [id=5823041368128025574]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
[daniela:~/Downloads/ticket97667] [2.7.1] main* 6s ± 
```