terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0"
    }
  }
}

provider "google" {
  region      = "europe-west1"
  project     = "nttdataDataplex"
  credentials = file("fake-credentials.json")
}
