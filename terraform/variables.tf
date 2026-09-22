variable "resource_group_name" {
  type = string
  description = "Name of the resource group"
  default = "flipkart-rg"
}

variable "location" {
  type = string
  description = "Location of the resource group"
  default = "Canada Central"
}

variable "asp_name" {
  type = string
  description = "Name of the App Service Plan"
  default = "flipkart-asp"
}

variable "webapp_name" {
  type = string
  description = "Name of the Web App"
  default = "flipkart-webapp-demo"
}