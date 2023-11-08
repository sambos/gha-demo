terraform {
  cloud {
    organization = "rsol-prod"
    workspaces {
      name = "learn-terraform-cloud"
    }
  }
}

provider "aws" {
  region = "us-east-1"

  assume_role {
    role_arn = "arn:aws:iam::995241849584:role/rsol-iaac"
  }
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
