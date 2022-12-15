resource "google_dialogflow_cx_intent" "default_welcome_intent" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "Default Welcome Intent 2"
  priority     = 500000

# TODO: Can we edit the default welcome intent instead of creating a new one?

  training_phrases {
    repeat_count = 1
    parts {
      text = "just going to say hi"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "heya"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "hello hi"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "howdy"
    }
  }
  training_phrases {
    repeat_count = 1
    parts {
      text = "hey there"
    }
  }

  training_phrases {
    repeat_count = 2

    parts {
      text = "hi there"
    }
  }

  training_phrases {
    repeat_count = 1

    parts {
      text = "greetings"
    }
  }

  training_phrases {
    repeat_count = 1

    parts {
      text = "hey"
    }
  }

  training_phrases {
    repeat_count = 1

    parts {
      text = "long time no see"
    }
  }

  training_phrases {
    repeat_count = 1

    parts {
      text = "hello"
    }
  }

  training_phrases {
    repeat_count = 1

    parts {
      text = "lovely day isn't it"
    }
  }

  training_phrases {
    repeat_count = 1

    parts {
      text = "I greet you"
    }
  }

  training_phrases {
    repeat_count = 1

    parts {
      text = "hello again"
    }
  }

  training_phrases {
    repeat_count = 1

    parts {
      text = "hi"
    }
  }

  training_phrases {
    repeat_count = 1

    parts {
      text = "hello there"
    }
  }

  training_phrases {
    repeat_count = 1

    parts {
      text = "a good day"
    }
  }
}

resource "google_dialogflow_cx_intent" "store_location" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "store.location"
  priority     = 500000

  training_phrases {
    repeat_count = 1
    parts {
      text = "Where are you located?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "How do I get to your store?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "What is your address?"
    }
  }

  training_phrases {
    repeat_count = 1

    parts {
      text = "What street are you on?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Where is the store located?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "How do I get there?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Where do I pick up my order?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Tell me the address"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Directions"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Where is the store?"
    }
  }
}


resource "google_dialogflow_cx_intent" "store_hours" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "store.hours"
  priority     = 500000

  training_phrases {
    repeat_count = 1
    parts {
      text = "What time do you close?"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "What are your store hours?"
    }
  }
}

resource "google_dialogflow_cx_intent" "order_new" {
  parent       = google_dialogflow_cx_agent.agent.id
  display_name = "order.new"
  priority     = 500000

  parameters {
    entity_type = "projects/-/locations/-/agents/-/entityTypes/sys.color"
    id          = "color"
    is_list     = false
    redact      = false
  }

  parameters {
    entity_type = google_dialogflow_cx_entity_type.size.id
    id          = "size"
    is_list     = false
    redact      = false
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to place an order"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I want to buy a shirt"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Order a shirt"
    }
  }

  training_phrases {
    repeat_count = 1

    parts {
      text = "Buy your "
    }
    parts {
      parameter_id = "color"
      text         = "pink"
    }
    parts {
      text = " shirt"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "Make a purchase"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I want a "
    }
    parts {
      parameter_id = "size"
      text         = "small"
    }
    parts {
      text = " shirt"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I want a "
    }
    parts {
      parameter_id = "size"
      text         = "large"
    }
    parts {
      text = ", "
    }
    parts {
      parameter_id = "color"
      text         = "red"
    }
    parts {
      text = " shirt"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I want a "
    }
    parts {
      parameter_id = "color"
      text         = "blue"
    }
    parts {
      text = " shirt"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I need a shirt"
    }
  }

  training_phrases {
    repeat_count = 1
    parts {
      text = "I need a "
    }
    parts {
      parameter_id = "color"
      text         = "yellow"
    }
    parts {
      text = " shirt"
    }
  }
}
