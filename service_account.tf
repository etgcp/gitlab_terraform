resource "google_service_account" "gitlabaccount" {
  account_id   = "gitlabaccount"
  display_name = "Gitlab Service Account"
}

resource "google_service_account_key" "glsakey" {
  service_account_id = "${google_service_account.myaccount.name}"
}