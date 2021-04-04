resource "google_compute_instance" "control_plane" {
  count = var.cp_vm_count

  name         = "${var.deploy_environment}-cp-${count.index}"
  machine_type = var.environment_instance_settings[var.deploy_environment].machine_type
  zone         = var.zone

 metadata = {
   ssh-keys = "vagrant:${file("~/.ssh/ssh-key.pub")}"
 }

 boot_disk {
   initialize_params {
     image = var.image
   }
 }

 metadata_startup_script = "sudo apt-get update; sudo apt-get upgrade -y;"

 network_interface {
   network = "default"

   access_config {
   }
 }
}


resource "google_compute_instance" "node" {
 count = var.node_vm_count

 name         = "${var.deploy_environment}-node-${count.index}"
 machine_type = var.environment_instance_settings[var.deploy_environment].machine_type
 zone         = var.zone

 metadata = {
   ssh-keys = "vagrant:${file("~/.ssh/ssh-key.pub")}"
 }

 boot_disk {
   initialize_params {
     image = var.image
   }
 }

 metadata_startup_script = "sudo apt-get update; sudo apt-get upgrade -y;"

 network_interface {
   network = "default"
   access_config {
   }
 }
}