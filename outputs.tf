output "dataplex_asset_id" {
  value = module.dataplex_asset.asset_id
}

output "dataplex_lake_name" {
  value = module.google_dataplex_lake.lake_name
}
  
output "dataplex_zone_name" {
  value = module.google_dataplex_zone.zone_name
}

output "gcs_bucket_name" {
  value = google_storage_bucket.basic_bucket.name
}