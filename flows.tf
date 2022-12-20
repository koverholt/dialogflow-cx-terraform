resource "null_resource" "default_start_flow" {
  provisioner "local-exec" {
    command = <<-EOT
    curl --location --request PATCH "https://$LOCATION-dialogflow.googleapis.com/v3/projects/$PROJECT/locations/$LOCATION/agents/$AGENT/flows/$FLOW?updateMask=transitionRoutes" \
    -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" \
    -H 'Content-Type: application/json' \
    --data-raw "{
      'transitionRoutes': [{
        'intent': 'projects/$PROJECT/locations/$LOCATION/agents/$AGENT/intents/$INTENT',
		    'triggerFulfillment': {
			    'messages': [{
				    'text': {
					    'text': [
						    'Hello, this is a shirt ordering virtual agent. How can I help you?'
					    ]
				    }
			    }]
		    }
	    }]
    }"
    EOT

    environment = {
      PROJECT = var.project_id
      LOCATION = var.region
      AGENT = google_dialogflow_cx_agent.agent.name
      FLOW = "00000000-0000-0000-0000-000000000000"
      INTENT = "00000000-0000-0000-0000-000000000000"
    }
  }

  depends_on = [
    google_dialogflow_cx_agent.agent
  ]
}
