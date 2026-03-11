resource "google_dataplex_zone" "basic_zone" {
  name     = var.zone_name
  location = var.location
  lake     = var.lake_name
  type     = "RAW"

  discovery_spec {
    enabled = false
  }

  resource_spec {
    location_type = "SINGLE_REGION"
  }

  project = var.project
}
