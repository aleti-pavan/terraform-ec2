About
=====
This creates vpc and its components for a virtual machine to be spun on AWS infrastructure and uses your key in order to get access to the created EC2.

Steps to Create
===============

1. git clone the repo
2. cd aws_terraform
3. terraform init
4. terraform plan
5. terraform apply -auto-approve

Connect to the EC2:
===================
Upon successful creation of the project, you will have a output command with the name Login.

Opening Additional Ports:
=========================

By default it SG only opens 22 port for ssh access. If incase you want to have specific ports open for the EC2. Feel free to update the variable 'port_number'.

you can also create a 'terraform.tfvars' file to override the default values on the vars.tf

Example:
---------
Below change to the port_number open 22 and 8080 ports.

variable "port_number" {
  description = "Remote tcp port to be used for access to the vms created via the nsg applied to the nics."
  default = ["22","8080"]
  type = "list"
}


Steps to Delete
===============
1. cd aws_terraform ( make sure you are in the repo )
2. terraform destroy -auto-approve
