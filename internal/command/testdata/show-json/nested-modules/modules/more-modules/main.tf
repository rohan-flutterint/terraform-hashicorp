variable "test_var" {
  default = "bar-var"
}

resource "test_instance" "test" {
  ami = var.test_var
}

terraform {
  required_providers {
    test = {
      source = "hashicorp/test"
    }
  }
}
