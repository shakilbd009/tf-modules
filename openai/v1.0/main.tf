resource "azurerm_cognitive_account" "this" {
    for_each            = var.openai_vabiables
    name                = each.value.name
    location            = each.value.location
    resource_group_name = each.value.resource_group_name
    kind                = "OpenAI"
    sku_name            = each.value.sku
    tags                = each.value.tags
}

resource "azurerm_cognitive_deployment" "this" {
    for_each             = {for k, v in var.openai_vabiables: v.model}
    name                 = "${each.value.name}-deployment"
    cognitive_account_id = azurerm_cognitive_account.this[each.key].id
    model {
        format  = each.value.format
        name    = each.value.name
        version = each.value.version
    }

    scale {
        type = each.value.scale_type
    }
}