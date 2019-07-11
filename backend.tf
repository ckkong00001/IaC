terraform {
  backend "gcs" {
    bucket = "gkef-tf-demo-246313-tfstate"
    credentials = "serviceaccount.json"
  }
}
