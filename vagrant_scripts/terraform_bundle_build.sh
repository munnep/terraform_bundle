git clone --single-branch --branch=v0.15 --depth=1 https://github.com/hashicorp/terraform.git
cd terraform
go build -o /vagrant/terraform-bundle ./tools/terraform-bundle
