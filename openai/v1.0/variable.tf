variable "openai_vabiables" {
    type = map(object({
        name                = string
        location            = string
        resource_group_name = string
        sku                 = string
        model               = list(object({
            name       = string
            format     = string
            version    = string
            scale_type = string
        }))
        tags = map(string)
    }))
}