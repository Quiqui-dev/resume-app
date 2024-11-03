

variable "environment" {
  type        = string
  nullable    = false
  description = "The environment to provision resources for"
}

variable "region" {
  type        = string
  nullable    = true
  default     = "uksouth"
  description = "The region to deploy the resources to"
}

