resource "yandex_vpc_network" "develop1" {
  name = var.vpc_name
}

resource "yandex_vpc_subnet" "develop1" {
  name           = var.vpc_name
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop1.id
  v4_cidr_blocks = var.default_cidr
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}


data "yandex_compute_image" "ubuntu1" {
  family = var.vm_image_family
}

resource "yandex_compute_instance" "kuber-work-node" {

  count = 4

  name        = "work-node-${count.index+1}"

  platform_id = "standard-v1"

  resources {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu1.image_id
      type     = "network-hdd"
      size     = 10
    }
  }

  metadata = {
         serial-port-enable = 1,
         ssh-keys           = "ubuntu:${local.ssh-keys}"
    }

  scheduling_policy { preemptible = true }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop1.id
    nat       = true
  }
  allow_stopping_for_update = true
}

resource "yandex_compute_instance" "kuber-master-node" {

  count = 1

  name        = "master-node-${count.index+1}"

  platform_id = "standard-v1"

  resources {
    cores         = 2
    memory        = 4
    core_fraction = 20
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu1.image_id
      type     = "network-hdd"
      size     = 10
    }
  }

  metadata = {
         serial-port-enable = 1,
         ssh-keys           = "ubuntu:${local.ssh-keys}"
    }

  scheduling_policy { preemptible = true }

  network_interface {
    subnet_id = yandex_vpc_subnet.develop1.id
    nat       = true
  }
  allow_stopping_for_update = true
}