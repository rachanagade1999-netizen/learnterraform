variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {
  sensitive = true
}
variable "tenant_id" {}


variable "resource_group_name" {
  default = "dev-rg-terraform"
}

variable "environment" {
  default = "dev"
}

variable "location" {
  default = "centralus"
}