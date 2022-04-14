variable "cloud_id" {
  description = "Cloud"
}
variable "image_id" {
  description = "Image"
}
variable "folder_id" {
  description = "Folder"
}
variable "token" {
  description = "Yandex token"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "private_key_path" {
  # Описание переменной
  description = "Path to the private key used for ssh access"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "region_id" {
  description = "Region id"
  default     = "ru-central1"
}
variable "count_instance" {
  description = "Count of instances"
  default     = 1
}

variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}

variable "access_key" {
  description = "Access key for object storage"
  default     = "assess-key"
}

variable "secret_key" {
  description = "Secret key for object storage"
  default     = "secret_key"
}
