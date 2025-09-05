# resource "google_service_account" "ops-service-acct" {
#   account_id   = "ops-service-acct"
#   display_name = "Opeartion Service account"
# }

#Bind IAM Role to Service Account

resource "google_project_iam_member" "terraform_network_admin" {
  project = "pratik-learning" # <-- replace with your project ID
  role    = "roles/compute.networkAdmin"
  member  = "serviceAccount:ops-service-acct@pratik-learning.iam.gserviceaccount.com"
}

