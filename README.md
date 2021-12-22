# terraform_bundle

This repository describes how to build and use terraform-bundle to create a zip file with the required terraform version you want and the required providers. You can then use this on a machine that is not able to download the repositories itself. 

This repository is based on the following [README.md](https://github.com/hashicorp/terraform/blob/main/tools/terraform-bundle/README.md) file from HashiCorp


This repository has the following: 
- Vagrant file which can start a virtual machine:  
  This virtual machine will do the following at the start
    - install go software
    - clone the hashicorp terraform repository [https://github.com/hashicorp/terraform](https://github.com/hashicorp/terraform)
    - from this terraform repository build a terraform-bundle
- Use this bundle to generate a zipfile containing terraform 0.15 and the latest AWS provider

# Prerequisites

Vagrant [See documentation](https://www.vagrantup.com/docs/installation)  
Virtualbox [See documentation](https://www.virtualbox.org/wiki/Downloads)

# How to
- Clone the repository to your local machine
```
git clone https://github.com/munnep/terraform_bundle.git
```
- Go to the directory
```
cd terraform_bundle
```
- Start a virtual machine with Vagrant
```
vagrant up
```
- ssh into the virtual machine with Vagrant.
```
vagrant ssh
```
- Go to the ```/vagrant``` directory
```
cd /vagrant
```
- Here you will find a ```terraform-bundle``` which was created during startup of the machine
- create the bundle using the ```terraform-bundle.hcl```. Edit this file for changes you want
```
./terraform-bundle package /vagrant/terraform-bundle.hcl
```
output
```
terraform_0.15.5-bundle2021122213_linux_amd64.zip
```
- You can use this zipfile on Terraform Enterprise or on a machine where no providers can be downloaded
- exit out of the vagrant machine
```
exit
```
- Stop the vagrant machine
```
vagrant halt
```
- When you are completely done you can remove it
```
vagrant destroy
```

# done
- [x] vagrant file
- [x] install go
- [x] build terraform-bundle
- [x] generate a package with terraform-bundle


# to do


