#!/bin/bash
set -xe

# PagerDuty API endpoint
url="https://events.pagerduty.com/v2/enqueue"

# Curl command to create an incident

curl --request 'POST' \
--url 'https://events.pagerduty.com/v2/enqueue' \
--header 'Content-Type: application/json' \
--data '{
  "payload": {
      "summary": "Test alert routeOrchestration",
      "severity": "local",
      "source": "GitHub Action"
  },
  "routing_key": "R025TGSKQSZOKY3W5D1HG2KBE17D5I0S",
  "event_action": "trigger"
}'