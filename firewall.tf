# All K8s Ports 

resource "google_compute_firewall" "k8s_ports" {
  name    = "allow-k8s-ports"
  network =   google_compute_network.test-vpc.name

  allow {
    protocol = "tcp"
    ports    = ["2379", "2380", "6443", "8090", "8091", "10250", "10251", "10252", "10255"]
  }

  allow {
    protocol = "udp"
    ports    = ["8472"]
  }

  # Allow from anywhere (0.0.0.0/0), for testing/dev
  # In production, restrict to specific CIDR ranges (e.g., your VPC or trusted IPs)
  source_ranges = ["0.0.0.0/0"]
}


resource "google_compute_firewall" "iap-access" {
  name    = "iap-access"
  network = google_compute_network.test-vpc.name  # change if you use a custom VPC

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  # IAP IP range required for SSH-in-browser and gcloud ssh
  source_ranges = ["35.235.240.0/20"]

  #target_tags = ["k8s-worker", "k8s-master"]  # optional: tag your VMs with "ssh-enabled"
}
