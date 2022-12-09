resource "test_instance" "foo" {
  count = 2
}

resource "test_instance" "bar" {
}

resource "test_instance" "baz" {
}

terraform {
  required_providers {
    test = {
      source = "hashicorp/test"
    }
  }
}
