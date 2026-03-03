output "dataplex_asset_id" {
  value = module.dataplex_asset.asset_id
}

output "dataplex_lake_name" {
  value = module.dataplex_asset.lake_name
}

output "dataplex_zone_name" {
  value = module.dataplex_asset.zone_name
}

output "gcs_bucket_name" {
  value = module.dataplex_asset.bucket_name
}
