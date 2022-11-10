terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
  }
}

provider "null" {
  # Configuration options
}

resource "null_resource" "resource1" {
  count = 2
  provisioner "local-exec" {
    command = "pwd"
  }
}
