locals {
    openai_vabiables = {
        01 = {
            name                = "open_ai_account_name"
            location            = "eastus"
            resource_group_name = "open_ai_rg_name"
            sku                 = "S0"
            model               = [{
                name       = "gpt-35-turbo"
                format     = "OpenAI"
                version    = "0301"
                scale_type = "Standard"
            }]
            tags = null
        }
    }
}