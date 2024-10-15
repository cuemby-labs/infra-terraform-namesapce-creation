#
# Namespace creation
#

resource "kubernetes_namespace" "this" {
  metadata {
    name = var.namespace_name
  }
}

#
# Walrus Information
#

locals {
  context = var.context
}