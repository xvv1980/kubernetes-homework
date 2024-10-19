locals {
  ssh-keys = file("~/.ssh/id_ed25519.pub")
}

variable "cloud_id" {
  type        = string
  default     = "b1g2adschqrgfns8vmei"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1gd132t5omvnh3jug4j"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vm_image_family" {
  type        = string
  default     = "ubuntu-2404-lts-oslogin"
}

variable "vpc_name" {
  type        = string
  default     = "kuber-test1"
  description = "VPC network & subnet name"
}

variable "vm_name" {
  type        = string
  default     = "manage-node"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}
