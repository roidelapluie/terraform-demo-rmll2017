provider "kubernetes" {}

variable "machine_count" {
  description = "The number of machines you want"
}

variable "base_image" {
  description = "The base image you want to use"
  default     = "nginx"
}

variable "base_image_version" {
  description = "The base image version"
  type        = "string"
}
