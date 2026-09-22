output "webapp_name" {
  value = azurerm_windows_web_app.WebApp.name
}

output "webapp_url" {
  value = azurerm_windows_web_app.WebApp.default_hostname
}