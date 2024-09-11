locals {
  context = var.context
}

module "submodule" {
  source = "./modules/submodule"

  message = "Hello, submodule"
}

#
# Namespace creation
#

resource "kubernetes_namespace" "this" {
  metadata {
    name = var.namespace_name
  }
}