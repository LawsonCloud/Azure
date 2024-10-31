resource "azurerm_resource_group" "this" {
  name     = "rg-swa-centralus-${var.tags.environment}"
  location = "centralus" // Changed location due to swa not being avail in SCUS
}

resource "azurerm_static_web_app" "this" {
  name                = "swa-centralus-${var.tags.environment}"
  resource_group_name = azurerm_resource_group.this.name
  location            = "centralus"
}