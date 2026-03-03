resource "google_dataplex_lake" "primary" {
  location     = var.location
  name         = var.lake_name
  description  = "Lake for DCL"
  display_name = "Lake for DCL"
  project      = var.project

  labels = {
    my-lake = "exists"
  }
}