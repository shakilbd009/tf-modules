module "name" {
    source = "../"
    openai_vabiables = local.openai_vabiables
}

provider "azurerm" {
  features {}
}