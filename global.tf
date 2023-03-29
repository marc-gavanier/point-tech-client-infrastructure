locals {
  product_information = {
    context : {
      product    = var.product
      service    = var.service
      start_date = "2023-03-16"
      end_date   = "unknown"
    }
    purpose : {
      disaster_recovery = "low"
      service_class     = "bronze"
    }
    organization : {
      client = "anct"
    }
    stakeholders : {
      creator = "terraform"
      team    = "cartographie-nationale"
    }
  }
}

locals {
  productTitle = title(replace(local.product_information.context.product, "_", " "))
  serviceTitle = title(replace(local.product_information.context.service, "_", " "))
}
