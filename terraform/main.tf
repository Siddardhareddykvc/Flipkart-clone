terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 5.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "RG" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "ASP" {
  name                = var.asp_name
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name

  os_type  = "Windows"
  sku_name = "B1"
}

resource "azurerm_windows_web_app" "WebApp" {
  name                = var.webapp_name
  location            = azurerm_resource_group.RG.location
  resource_group_name = azurerm_resource_group.RG.name

  service_plan_id = azurerm_service_plan.ASP.id

  site_config {
    application_stack {
      current_stack  = "dotnet"
      dotnet_version = "v8.0"
    }
  }
}