resource "google_dataplex_asset" "primary" {
  name          = var.asset_name
  location      = var.location
  lake          = var.lake_name
  dataplex_zone = var.zone_name

  discovery_spec {
    enabled = false
  }

  resource_spec {
    name = "projects/${var.project}/buckets/${var.bucket_name}"
    type = "STORAGE_BUCKET"
  }

  labels = var.asset_labels
  project = var.project
}