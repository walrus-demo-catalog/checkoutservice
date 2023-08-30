terraform {
  required_providers {
    kubectl = {
      source  = "gavinbunney/kubectl"
      version = "1.14.0"
    }
  }
}

data "kubectl_path_documents" "manifest" {
  pattern = "${path.module}/manifest.yaml"
  vars = {
    namespace                    = local.namespace 
    image_registry               = var.image_registry
    image_repository             = var.image_repository
    image_version                = var.image_version
    replicas                     = var.replicas
    productcatalogservice_name   = var.productcatalogservice_name
    shippingservice_name         = var.shippingservice_name
    paymentservice_name          = var.paymentservice_name
    emailservice_name            = var.emailservice_name
    currencyservice_name         = var.currencyservice_name
    cartservice_name             = var.cartservice_name

  }
}

resource "kubectl_manifest" "manifest" {
  wait_for_rollout = false

  count     = length(data.kubectl_path_documents.manifest.documents)
  yaml_body = element(data.kubectl_path_documents.manifest.documents, count.index)
}

locals {
  namespace                 = coalesce(var.namespace, var.walrus_metadata_namespace_name)
}