# Terraform-Provisioner

In Terraform, a provisioner is a feature used to execute scripts or commands on a local or remote machine as part of the resource creation or management process

* local-exec : Executes commands locally on the machine running Terraform, rather than on the resource itself.

* remote-exec : Executes commands on a remote resource, typically over SSH or WinRM.
 For this we need to make first connection and then we can install or update configuration changes to the server if required .
