# main.tf
provider "google" {
  project = "your-gcp-project-id"
  region  = "us-west1"
}

resource "google_compute_instance" "example" {
  name         = "terraform-instance"
  machine_type = "f1-micro"
  zone         = "us-west1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }

  tags = ["terraform", "gcp"]
}
