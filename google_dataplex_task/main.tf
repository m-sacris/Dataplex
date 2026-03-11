
resource "google_dataplex_task" "example" {

  task_id  = "tf-test-task"
  location = var.location
  lake     = var.lake_name

  description = "Test Task Basic"

  display_name = "task-basic"

  labels = { "count" : "3" }

  trigger_spec {
    type        = "RECURRING"
    disabled    = false
    max_retries = 3
    start_time  = "2023-10-02T15:01:23Z"
    schedule    = "1 * * * *"
  }

  execution_spec {
    service_account            = "${var.project_number}-compute@developer.gserviceaccount.com"
    project                    = var.project
    max_job_execution_lifetime = "100s"
    kms_key                    = "234jn2kjn42k3n423"
  }

  spark {
    python_script_file = "gs://dataproc-examples/pyspark/hello-world/hello-world.py"

  }

  project = var.project

}