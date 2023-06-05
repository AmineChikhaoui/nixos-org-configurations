locals {
  image_tags = {
    Name        = local.image_name
    Description = local.image_description
    System      = local.image_system
    Release     = terraform.workspace
    Official    = false
  }
}

provider "aws" {
  region = "eu-west-1"
  default_tags {
    tags = local.image_tags
  }
}
