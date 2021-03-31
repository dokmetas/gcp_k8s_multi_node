variable "project" {}

variable "region" {
  default = "europe-west6"
}

variable "cp_vm_count" {
  type = number
  default = 1
}

variable "node_vm_count" {
  type = number
  default = 4
}

variable "deploy_environment"{
  default = "dev"
}

variable "zone" {
  default = "europe-west6-a"
}

variable "image" {
  default = "ubuntu-1804-bionic-v20210224"
}

variable "environment_instance_settings" {
  type = map(object({machine_type=string}))
  default = {
    "dev" = {
      machine_type = "e2-medium"
    },
    "qa" = {
      machine_type = "e2-medium"
    }
  }
}