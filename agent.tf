resource "google_dialogflow_cx_agent" "agent" {
  display_name               = "dialogflowcx-agent"
  location                   = var.region
  default_language_code      = "en"
  time_zone                  = "America/Chicago"
  description                = "Example description"
  enable_stackdriver_logging = true
  enable_spell_correction    = true
    speech_to_text_settings {
        enable_speech_adaptation = true
    }
}

resource "google_dialogflow_cx_flow" "default_start_flow" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Default Start Flow 2"
  description  = "A start flow created along with the agent"

  nlu_settings {
        classification_threshold = 0.3
        model_type               = "MODEL_TYPE_STANDARD"
    }

  transition_routes {
    intent = "${google_dialogflow_cx_agent.agent.id}/intents/00000000-0000-0000-0000-000000000000"
    trigger_fulfillment {
      return_partial_responses = false
        messages {
          text {
            text  = ["Hello, this is a shirt ordering virtual agent. How can I help you?"]
          }
        }
    }
  }

  event_handlers {
      event = "sys.no-match-default"
      trigger_fulfillment {
        return_partial_responses = false
        messages {
          text {
            text  = ["Sorry, could you say that again?"]
          }
        }
      }
  }

  event_handlers {
    event = "sys.no-input-default"
    trigger_fulfillment {
          return_partial_responses = false
          messages {
              text {
                  text  = ["One more time?"]
              }
          }
      }
  }
}

resource "google_dialogflow_cx_intent" "store_location" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "store.location"
  priority     = 1
  description  = "Intent example"

  training_phrases {
     parts {
         text = "Where is the store?"
     }
     repeat_count = 1
  }

  training_phrases {
     parts {
         text = "Directions"
     }
     repeat_count = 1
  }

  training_phrases {
     parts {
         text = "Tell me the address"
     }
     repeat_count = 1
  }

  training_phrases {
     parts {
         text = "Where do I pick up my order?"
     }
     repeat_count = 1
  }

  training_phrases {
     parts {
         text = "How do I get there?"
     }
     repeat_count = 1
  }

  training_phrases {
     parts {
         text = "Where is the store located?"
     }
     repeat_count = 1
  }

  training_phrases {
     parts {
         text = "What street are you on?"
     }
     repeat_count = 1
  }

  training_phrases {
     parts {
         text = "What is your address?"
     }
     repeat_count = 1
  }

  training_phrases {
     parts {
         text = "How do I get to your store?"
     }
     repeat_count = 1
  }

  training_phrases {
     parts {
         text = "Where are you located?"
     }
     repeat_count = 1
  }

  parameters {
    id          = "param1"
    entity_type = "projects/-/locations/-/agents/-/entityTypes/sys.date"
  }
}
