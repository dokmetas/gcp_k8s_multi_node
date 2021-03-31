output "ip_cp" {
 value = google_compute_instance.control_plane.*.network_interface.0.access_config.0.nat_ip
}

output "ip_node" {
 value = google_compute_instance.node.*.network_interface.0.access_config.0.nat_ip
}

