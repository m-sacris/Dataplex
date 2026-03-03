output "asset_id" {
  description = "The ID of the Dataplex asset"
  value       = google_dataplex_asset.primary.id
}

output "asset_name" {
  description = "The name of the Dataplex asset"
  value       = google_dataplex_asset.primary.name
}

output "lake_name" {
  description = "The name of the Dataplex lake"
  value       = google_dataplex_lake.basic_lake.name
}

output "zone_name" {
  description = "The name of the Dataplex zone"
  value       = google_dataplex_zone.basic_zone.name
}

output "bucket_name" {
  description = "The name of the GCS bucket"
  value       = google_storage_bucket.basic_bucket.name
}
