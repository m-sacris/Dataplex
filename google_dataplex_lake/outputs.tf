output "lake_name" {
  description = "The name of the created Dataplex lake"
  value       = google_dataplex_lake.primary.name
}