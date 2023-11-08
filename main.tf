terraform {
  cloud {
    organization = "rsol-prod"
    workspaces {
      name = "learn-terraform-cloud"
    }
  }
}

# An example resource that does nothing.
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }

