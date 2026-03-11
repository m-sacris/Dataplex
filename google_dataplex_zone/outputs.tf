output "zone_name" {
  description = "The name of the Dataplex zone"
  value       = google_dataplex_zone.basic_zone.name
}