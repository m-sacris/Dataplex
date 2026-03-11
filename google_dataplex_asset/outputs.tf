output "asset_id" {
  description = "The ID of the Dataplex asset"
  value       = google_dataplex_asset.primary.id
}

output "asset_name" {
  description = "The name of the Dataplex asset"
  value       = google_dataplex_asset.primary.name
}