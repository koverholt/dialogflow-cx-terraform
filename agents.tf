resource "google_dialogflow_cx_agent" "agent" {
  display_name          = "dialogflow-cx-agent2"
  location              = var.region
  default_language_code = "en"
  time_zone             = "America/Chicago"
}

# TODO: Rename agent display name
