resource "google_dataplex_datascan" "basic_profile" {
  location     = var.location
  data_scan_id = "dataprofile-basic"

  data {
    resource = "//bigquery.googleapis.com/projects/bigquery-public-data/datasets/samples/tables/shakespeare"
  }

  execution_spec {
    trigger {
      on_demand {}
    }
  }

  data_profile_spec {}

  project = var.project
}