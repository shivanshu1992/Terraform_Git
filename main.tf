resource "google_compute_instance" "my_instance_weekend" {
  name         = "testing-instance-weekend"
  machine_type = "n2-standard-2"
  zone = "us-west1-b"
  allow_stopping_for_update = true
  project = "project-for-testing-424407"

  tags = ["foo", "bar"]
  boot_disk {
    initialize_params {
     image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
network = "default"
  
    access_config {
      // Ephemeral public IP
    }
  }
}
