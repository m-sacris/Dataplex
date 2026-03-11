variable "project" {
  description = "The GCP project ID"
  type        = string
  default     = "nttdataDataplex"
}

variable "location" {
  description = "The location/region for the resources"
  type        = string
  default     = "europe-west1"
}

variable "lake_name" {
  description = "The name of the Dataplex lake"
  type        = string
  default     = "lake"
}

variable "zone_name" {
  description = "The name of the Dataplex zone"
  type        = string
  default     = "zone"
}

variable "asset_name" {
  description = "The name of the Dataplex asset"
  type        = string
  default     = "asset"
}

variable "bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
  default     = "bucket"
}

variable "project_number" {
  description = "The GCP project number"
  type        = string
}

variable "asset_labels" {
  description = "Labels to apply to the Dataplex asset"
  type        = map(string)
  default = {
    env      = "foo"
    my-asset = "exists"
  }
}