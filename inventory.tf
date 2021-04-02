resource "local_file" "hosts_cfg" {
  content = templatefile("./templates/inventory.tpl",
    {
      k8s_control_plane = google_compute_instance.control_plane.*.network_interface.0.access_config.0.nat_ip
      k8s_worker_node   = google_compute_instance.node.*.network_interface.0.access_config.0.nat_ip
    }
  )
  filename = "./k8s/hosts"
}