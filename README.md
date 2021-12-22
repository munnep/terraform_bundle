# terraform_bundle
terraform bundle use


commands
```
git clone --single-branch --branch=v0.15 --depth=1 https://github.com/hashicorp/terraform.git
cd terraform
go build -o ../terraform-bundle ./tools/terraform-bundle
```

Documentation for the read:
[https://github.com/hashicorp/terraform/blob/v0.15/tools/terraform-bundle/README.md](https://github.com/hashicorp/terraform/blob/v0.15/tools/terraform-bundle/README.md)

Save the following as a file called terraform-bundle.hcl
```
terraform {
  # Version of Terraform to include in the bundle. An exact version number
  # is required.
  version = "0.15.5"
}

# Define which provider plugins are to be included
providers {
  # Include the newest "aws" provider version in the 1.0 series.
  aws = {
    versions = ["~> 3.0"]
  }
}
```

create the bundle
```
./terraform-bundle package terraform-bundle.hcl
```

output
```
terraform_0.15.5-bundle2021122210_darwin_amd64.zip
```

# done


# to do

- [] vagrant file
- [] install go
- [] build terraform-bundle
- [] generate a package with terraform-bundle

