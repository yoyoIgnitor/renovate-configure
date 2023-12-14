#!/bin/bash
set -xe

# PagerDuty API endpoint
url="https://api.pagerduty.com/incidents"

# Curl command to create an incident
curl --request POST \
  --url "$url" \
  --header 'Accept: application/json' \
  --header "Authorization: Token token=$token" \
  --header 'Content-Type: application/json' \
  --header 'From: ' \
  --data '{
    "incident": {
      "type": "incident",
      "title": "The server is on fire.",
      "service": {
        "id": "P65NEYF",
        "type": "service_reference"
      },
      "priority": {
        "id": "PPG3VTQ",
        "type": "priority_reference"
      },
      "urgency": "high",
      "incident_key": "baf7cf21b1da41b4b0221008339ff357",
      "body": {
        "type": "incident_body",
        "details": "A disk is getting full on this machine. You should investigate what is causing the disk to fill, and ensure that there is an automated process in place for ensuring data is rotated (eg. logs should have logrotate around them). If data is expected to stay on this disk forever, you should start planning to scale up to a larger disk."
      },
      "escalation_policy": {
        "id": "P0DXS5K",
        "type": "escalation_policy_reference"
      }
    }
  }'
