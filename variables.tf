variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {
  sensitive = true
}
variable "tenant_id" {}


// resource group name
variable "resource_group_name" {
  default = "${var.environment}-rg-terraform-github-actions"
}
// environment
variable "environment" {
  default = "dev"
}