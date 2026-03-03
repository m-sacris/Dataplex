resource "google_storage_bucket" "basic_bucket" {
  name                        = var.bucket_name
  location                    = var.location
  uniform_bucket_level_access = true
  lifecycle {
    ignore_changes = [
      labels
    ]
  }

  project = var.project
}

resource "google_dataplex_lake" "basic_lake" {
  name     = var.lake_name
  location = var.location
  project  = var.project
}

resource "google_dataplex_zone" "basic_zone" {
  name     = var.zone_name
  location = var.location
  lake     = google_dataplex_lake.basic_lake.name
  type     = "RAW"

  discovery_spec {
    enabled = false
  }

  resource_spec {
    location_type = "SINGLE_REGION"
  }

  project = var.project
}

resource "google_dataplex_asset" "primary" {
  name          = var.asset_name
  location      = var.location
  lake          = google_dataplex_lake.basic_lake.name
  dataplex_zone = google_dataplex_zone.basic_zone.name

  discovery_spec {
    enabled = false
  }

  resource_spec {
    name = "projects/${var.project}/buckets/${var.bucket_name}"
    type = "STORAGE_BUCKET"
  }

  labels = var.asset_labels

  project = var.project
  depends_on = [
    google_storage_bucket.basic_bucket
  ]
}