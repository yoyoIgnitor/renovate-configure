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
      "severity": "info",
      "source": "GitHub Action"
  },
  "routing_key": "$token",
  "event_action": "trigger"
}'