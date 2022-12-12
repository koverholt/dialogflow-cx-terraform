terraform import google_dialogflow_cx_agent.agent "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69"
terraform import google_dialogflow_cx_flow.default_start_flow "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/flows/00000000-0000-0000-0000-000000000000"

terraform import google_dialogflow_cx_intent.default_welcome_intent "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/intents/00000000-0000-0000-0000-000000000000"
terraform import google_dialogflow_cx_intent.store_hours            "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/intents/327ed726-043e-41b7-af1f-f34a10a0f1e6"
terraform import google_dialogflow_cx_intent.order_new              "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/intents/551e2b01-f2bf-49da-8ff4-92adf139b736"
terraform import google_dialogflow_cx_intent.store_location         "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/intents/7608701f-a8f5-4519-9b05-97ec2094c634"

terraform import google_dialogflow_cx_entity_type.size "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/entityTypes/9cecd920-bc46-4edf-99b2-2c7059d8b92b"

terraform import google_dialogflow_cx_page.new_order          "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/flows/00000000-0000-0000-0000-000000000000/pages/8806f1fb-c45e-43ba-ac16-47a668ddc9eb"
terraform import google_dialogflow_cx_page.order_confirmation "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/flows/00000000-0000-0000-0000-000000000000/pages/ec0be6d8-6c29-4233-a290-4f60c3fe7880"
terraform import google_dialogflow_cx_page.store_hours        "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/flows/00000000-0000-0000-0000-000000000000/pages/bc1f8bf5-8947-4e6e-bfcc-8135da845441"
terraform import google_dialogflow_cx_page.store_location     "projects/koverholt-dev/locations/us-central1/agents/73696d8a-b312-460e-a88a-3fc00827ed69/flows/00000000-0000-0000-0000-000000000000/pages/e736abf0-bc00-4d65-936b-f56033d12433"
