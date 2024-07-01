provider "google" {
  project = "coen-mykola-kryvych"
  region  = "europe-west3"
}

provider "google-beta" {
  project = "coen-mykola-kryvych"
  region  = "europe-west3"
}

terraform {
  required_providers {
    google = {
      version = "5.19.0"
    }
    google-beta = {
      version = "5.19.0"
    }
  }

  backend "gcs" {
    bucket = "coen-mykola-kryvych-backstage-terraform"
    prefix = "coen-mykola-kryvych"
  }
}
