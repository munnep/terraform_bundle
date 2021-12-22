# terraform_bundle
terraform bundle use

commands
```
git clone --single-branch --branch=v0.15 --depth=1 https://github.com/hashicorp/terraform.git
cd terraform
go build -o /vagrant/terraform-bundle ./tools/terraform-bundle
cd vagrant
./terraform-bundle package /vagrant/terraform-bundle.hcl
```

Documentation for the read:
[https://github.com/hashicorp/terraform/blob/v0.15/tools/terraform-bundle/README.md](https://github.com/hashicorp/terraform/blob/v0.15/tools/terraform-bundle/README.md)


create the bundle
```
./terraform-bundle package /vagrant/terraform-bundle.hcl
```

output
```
terraform_0.15.5-bundle2021122210_darwin_amd64.zip
```

# done
- [x] vagrant file
- [x] install go
- [x] build terraform-bundle


# to do

- [] generate a package with terraform-bundle

