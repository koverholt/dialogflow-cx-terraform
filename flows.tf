resource "google_dialogflow_cx_flow" "default_start_flow" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Default Start Flow 2"
  description  = "A start flow created along with the agent"

# TODO: Can we edit the default start flow instead of creating a new one?

  nlu_settings {
    classification_threshold = 0.3
    model_type               = "MODEL_TYPE_STANDARD"
  }

  transition_routes {
    intent = google_dialogflow_cx_intent.default_welcome_intent.id

    trigger_fulfillment {
      return_partial_responses = false
      messages {
        text {
          text = ["Hello, this is a shirt ordering virtual agent. How can I help you?"]
        }
      }
    }
  }

  # transition_routes {
  #   intent      = google_dialogflow_cx_intent.store_location.id
  #   target_page = google_dialogflow_cx_page.store_location.id
  # }

  # transition_routes {
  #   intent      = google_dialogflow_cx_intent.store_hours.id
  #   target_page = google_dialogflow_cx_page.store_hours.id
  # }

  # transition_routes {
  #   intent      = google_dialogflow_cx_intent.order_new.id
  #   target_page = google_dialogflow_cx_page.new_order.id
  # }

  # TODO: Fix these transition routes, avoid cyclic graph

}
