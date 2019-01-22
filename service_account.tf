resource "google_service_account" "gitlabaccount" {
  account_id   = "gitlabtestsa"
  display_name = "Gitlab Service Account"
}

resource "google_service_account_key" "glsakey" {
  service_account_id = "${google_service_account.gitlabaccount.name}"
}
