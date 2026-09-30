resource "google_compute_firewall" "firewall" {
  name    = var.firewall_name
  network = var.vpc_id

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "8080"]
  }

  source_ranges = ["0.0.0.0/0"]
}
