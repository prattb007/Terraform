# Read CSV file
locals {
  instances = csvdecode(file("${path.module}/server.csv"))
}

# Loop through CSV and create instances
resource "google_compute_instance" "vms" {
  for_each = { for inst in local.instances : inst.name => inst }

  name         = each.value.name
  machine_type = each.value.machine_type
  zone         = each.value.zone

  boot_disk {
    initialize_params {
      image = each.value.image
    }
  }

  network_interface {
    network = "custom-network" # Replace with your network name
    subnetwork = "test-subnet" # Replace with your subnet name
    access_config {}
  }
}