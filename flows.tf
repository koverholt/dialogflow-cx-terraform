resource "google_dialogflow_cx_flow" "default_start_flow" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Default Start Flow 2"
  description  = "A start flow created along with the agent"

# TODO: Can we edit the default start flow instead of creating a new one?

  nlu_settings {
    classification_threshold = 0.3
    model_type               = "MODEL_TYPE_STANDARD"
  }

# TODO: Change these absolute references to point to newly created resources

#   transition_routes {
#     intent = "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/intents/00000000-0000-0000-0000-000000000000"

#     trigger_fulfillment {
#       return_partial_responses = false
#       messages {
#         text {
#           text = ["Hello, this is a shirt ordering virtual agent. How can I help you?"]
#         }
#       }
#     }
#   }

#   transition_routes {
#     intent      = "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/intents/7608701f-a8f5-4519-9b05-97ec2094c634"
#     target_page = "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/flows/00000000-0000-0000-0000-000000000000/pages/e736abf0-bc00-4d65-936b-f56033d12433"
#   }

#   transition_routes {
#     intent      = "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/intents/327ed726-043e-41b7-af1f-f34a10a0f1e6"
#     target_page = "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/flows/00000000-0000-0000-0000-000000000000/pages/bc1f8bf5-8947-4e6e-bfcc-8135da845441"
#   }

#   transition_routes {
#     intent      = "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/intents/551e2b01-f2bf-49da-8ff4-92adf139b736"
#     target_page = "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/flows/00000000-0000-0000-0000-000000000000/pages/8806f1fb-c45e-43ba-ac16-47a668ddc9eb"
#   }
}
