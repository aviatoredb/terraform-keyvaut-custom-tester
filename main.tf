terraform {
  #required_providers {
  #  customkv = {
  #    source = "customkv"
  #  }
  #}
}

provider "customkv" {
  features {}
}

resource "customkv_key_vault" "my-server" {
    name = "test-kv-eb"
    resource_group_name = "testgroup"
    location = "eastus"
    tenant_id = "f9127298-458c-4ec3-a44f-6baf96f4ed36"
    sku_name = "standard"
}