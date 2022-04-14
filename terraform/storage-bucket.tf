resource "yandex_storage_bucket" "test" {
  access_key = var.access_key
  secret_key = var.secret_key
  bucket     = "tf-test-bucket"
}

provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}
