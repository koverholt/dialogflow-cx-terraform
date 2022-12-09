resource "google_dialogflow_cx_page" "new_order" {
  parent       = google_dialogflow_cx_flow.default_start_flow.id
  display_name = "New Order"

  form {
    parameters {
      display_name = "color"
      entity_type  = "projects/-/locations/-/agents/-/entityTypes/sys.color"
      is_list      = false
      redact       = false
      required     = true

      fill_behavior {
        initial_prompt_fulfillment {
          return_partial_responses = false

          messages {
            text {
              text = [
                "What color would you like?",
              ]
            }
          }
        }
      }
    }
    parameters {
      display_name = "size"
      entity_type  = "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/entityTypes/9cecd920-bc46-4edf-99b2-2c7059d8b92b"
      is_list      = false
      redact       = false
      required     = true

      fill_behavior {
        initial_prompt_fulfillment {
          return_partial_responses = false

          messages {
            text {
              text = [
                "What size do you want?",
              ]
            }
          }
        }
      }
    }
  }

  transition_routes {
    condition   = "$page.params.status = \"FINAL\""
    target_page = "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/flows/00000000-0000-0000-0000-000000000000/pages/ec0be6d8-6c29-4233-a290-4f60c3fe7880"

    trigger_fulfillment {
      return_partial_responses = false

      messages {
        text {
          text = [
            "You have selected a $session.params.size, $session.params.color shirt.",
          ]
        }
      }
    }
  }
  transition_routes {
    condition = "true"

    trigger_fulfillment {
      return_partial_responses = false

      messages {
        text {
          text = [
            "I'd like to collect a bit more information from you.",
          ]
        }
      }
    }
  }
}

resource "google_dialogflow_cx_page" "order_confirmation" {
  parent       = google_dialogflow_cx_flow.default_start_flow.id
  display_name = "Order Confirmation"

  entry_fulfillment {
    return_partial_responses = false

    messages {
      text {
        text = [
          "You can pick up your order for a $session.params.size $session.params.color shirt in 7 to 10 business days. Goodbye.",
        ]
      }
    }
  }

  transition_routes {
    condition   = "true"
    target_page = "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/flows/00000000-0000-0000-0000-000000000000/pages/END_SESSION"
  }
}

resource "google_dialogflow_cx_page" "store_hours" {
  parent       = google_dialogflow_cx_flow.default_start_flow.id
  display_name = "Store Hours"

  entry_fulfillment {
    return_partial_responses = false

    messages {
      text {
        text = [
          "We are open from 8 am to 5 pm Monday through Sunday.",
        ]
      }
    }
  }
}

resource "google_dialogflow_cx_page" "store_location" {
  parent       = google_dialogflow_cx_flow.default_start_flow.id
  display_name = "Store Location"

  entry_fulfillment {
    return_partial_responses = false

    messages {
      text {
        text = [
          "Our store is located at 1007 Mountain Drive, Gotham City, NJ.",
        ]
      }
    }
  }
}
