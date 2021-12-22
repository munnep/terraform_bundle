terraform {
  # Version of Terraform to include in the bundle. An exact version number
  # is required.
  version = "0.15.5"
}

# Define which provider plugins are to be included
providers {
  # Include the newest "aws" provider version in the 3.0 series.
  aws = {
    versions = ["~> 3.0"]
  }
}