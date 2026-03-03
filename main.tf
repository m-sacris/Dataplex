module "dataplex_asset" {
  source = "./google_dataplex_asset"

  project     = "nttdataDataplex"
  location    = "europe-west1"
  lake_name   = "lake"
  zone_name   = "zone"
  asset_name  = "asset"
  bucket_name = "bucket"

  asset_labels = {
    env      = "foo"
    my-asset = "exists"
  }
}
