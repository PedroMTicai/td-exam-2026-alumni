terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.5.0"
    }
  }
}

provider "google" {
  credentials = file("../../mi-llave-paas.json")

  project = var.gcp-project
  region  = var.gcp-region
  zone    = var.gcp-zone
}
