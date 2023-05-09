#Make sure GCS bucket is available before it 
terraform {
  backend "gcs" {
    bucket = "my-tf-state-bucket-012"
    prefix = "terraform/state"
    credentials = "service-account.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.27.0"
    }
  }

  required_version = ">= 0.14"
}