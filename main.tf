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

module "dataplex_datascan" {
  source = "./google_dataplex_datascan"

  project  = var.project
  location =var.location
}

module "google_dataplex_lake" {
  source      = "./google_dataplex_lake"
  project     = var.project
  location    = var.location
  lake_name   = var.lake_name
  zone_name   = var.zone_name
  asset_name  = var.asset_name
  bucket_name = google_storage_bucket.basic_bucket.name
}

module "google_dataplex_task" {
  source         = "./google_dataplex_task"
  lake_name      = module.google_dataplex_lake.lake_name
  project        = var.project
  project_number = "123456789"
  location       =var.location
}

module "google_dataplex_zone" {
  source      = "./google_dataplex_zone"
  project     = var.project
  location    =var.location
  lake_name   = module.google_dataplex_lake.lake_name
  zone_name   = var.zone_name
}

module "dataplex_asset" {
  source = "./google_dataplex_asset"

  project     = var.project
  location    =var.location
  lake_name   = module.google_dataplex_lake.lake_name
  zone_name   = module.google_dataplex_zone.zone_name
  asset_name  = var.asset_name
  bucket_name = google_storage_bucket.basic_bucket.name

  depends_on = [
    module.google_dataplex_lake,
    module.google_dataplex_zone,
    google_storage_bucket.basic_bucket
  ]
}