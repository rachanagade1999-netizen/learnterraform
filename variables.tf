variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {
  sensitive = true
}
variable "tenant_id" {}


// resource group name
variable "resource_group_name" {
  default = "dev-rg-terraform-github-actions"
}
// environment
variable "environment" {
  default = "dev"
}

variable "location" {
  default = "centralus"
}