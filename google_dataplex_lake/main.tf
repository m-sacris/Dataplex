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
data "google_iam_policy" "admin" {
  binding {
    role = "roles/Dataplex Service Agent"
    members = [
      "user:masacris@emeal.nttdata.com",
    ]
  }
}

resource "google_dataplex_lake_iam_policy" "policy" {
  project = google_dataplex_lake.primary.project
  location = google_dataplex_lake.primary.location
  lake = google_dataplex_lake.primary.name
  policy_data = data.google_iam_policy.admin.policy_data
}