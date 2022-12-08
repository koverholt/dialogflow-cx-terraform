resource "google_dialogflow_cx_agent" "agent" {
  display_name               = "dialogflow-cx-agent"
  location                   = var.region
  default_language_code      = "en"
  time_zone                  = "America/Chicago"
}

resource "google_dialogflow_cx_flow" "default_start_flow" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Default Start Flow"
  description  = "A start flow created along with the agent"

  nlu_settings {
    classification_threshold = 0.3
    model_type               = "MODEL_TYPE_STANDARD"
    }
}

# resource "google_dialogflow_cx_intent" "default_welcome_intent" {
#   parent       = google_dialogflow_cx_agent.agent.id
#   display_name = "Example"
# }

# resource "google_dialogflow_cx_intent" "store_hours" {
#   parent       = google_dialogflow_cx_agent.agent.id
#   display_name = "store.hours"
# }

# resource "google_dialogflow_cx_intent" "order_new" {
#   parent       = google_dialogflow_cx_agent.agent.id
#   display_name = "order.new"
# }

# resource "google_dialogflow_cx_intent" "store_location" {
#   parent       = google_dialogflow_cx_agent.agent.id
#   display_name = "store.location"
# }

# resource "google_dialogflow_cx_entity_type" "size" {
#   parent       = google_dialogflow_cx_agent.agent.id
#   display_name = "size"
#   kind         = "KIND_MAP"
#   entities {
#     value = "value1"
#     synonyms = ["synonym1","synonym2"]
#   }
# }

# resource "google_dialogflow_cx_page" "new_order" {
#   parent       = google_dialogflow_cx_flow.default_start_flow.id
#   display_name = "New Order"
# }

# resource "google_dialogflow_cx_page" "order_confirmation" {
#   parent       = google_dialogflow_cx_flow.default_start_flow.id
#   display_name = "Order Confirmation"
# }

# resource "google_dialogflow_cx_page" "store_hours" {
#   parent       = google_dialogflow_cx_flow.default_start_flow.id
#   display_name = "Store Hours"
# }

# resource "google_dialogflow_cx_page" "store_location" {
#   parent       = google_dialogflow_cx_flow.default_start_flow.id
#   display_name = "MyPage"
# }
