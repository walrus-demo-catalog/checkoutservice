# @group "Kubernetes Configuration"
# @label "Name"
variable "name" {
  type        = string
  description = "Name of the deployment resource. Auto-generated if empty."
  default     = ""
}

# @group "Kubernetes Configuration"
# @label "Namespace"
variable "namespace" {
  type        = string
  description = "Namespace to deploy. Auto-generated if empty."
  default     = ""
}

# @group "Kubernetes Configuration"
# @label "Replicas"
variable "replicas" {
  type        = number
  description = "Replicas to deploy"
  default     = 1
}

# @group "Kubernetes Configuration"
# @label "The Product Catalog Service Name"
variable "productcatalogservice_name" {
  type        = string
  description = "The product catalog service name in env to connect"
  default     = "productcatalogservice"
}

# @group "Kubernetes Configuration"
# @label "The Payment Service Name"
variable "paymentservice_name" {
  type        = string
  description = "The payment service name in env to connect"
  default     = "paymentservice"
}

# @group "Kubernetes Configuration"
# @label "The Email Service Name"
variable "emailservice_name" {
  type        = string
  description = "The email service name in env to connect"
  default     = "emailservice_name"
}

# @group "Kubernetes Configuration"
# @label "The Currency Service Name"
variable "currencyservice_name" {
  type        = string
  description = "The currency service name in env to connect"
  default     = "currencyservice"
}

# @group "Kubernetes Configuration"
# @label "The Cart Service Name"
variable "cartservice_name" {
  type        = string
  description = "The cart service name in env to connect"
  default     = "cartservice"
}

# @group "Image Configuration"
# @label "Image Registry"
variable "image_registry" {
  description = "Image registry"
  type        = string
  default     = "docker.io"
}

# @group "Image Configuration"
# @label "Image Repository"
variable "image_repository" {
  description = "Image repository"
  type        = string
  default     = "liyinlin"
}

# @group "Image Configuration"
# @label "Image Tag"
variable "image_version" {
  description = "Image tag"
  type        = string
  default     = "v0.8.0"
}

# @hidden
variable "service_name" {
  type        = string
  description = "Service name"
  default     = "checkoutservice"
}

# @hidden
variable "walrus_metadata_service_name" {
  type        = string
  description = "Walrus metadata service name."
  default     = ""
}
# @hidden
variable "walrus_metadata_namespace_name" {
  type        = string
  description = "Walrus metadata namespace name."
  default     = ""
}