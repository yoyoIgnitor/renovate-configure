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
  --header 'From: chandapukiran.kumar@sentinelone.com' \
  --data '{
    "incident": {
      "type": "incident",
      "title": "Renovate GitHub Action failed.",
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
        "details": "The Renovate GHA has failed, please check the issue, mostly it might be an issue with the runner, please check the runbook."
      },
      "escalation_policy": {
        "id": "P0DXS5K",
        "type": "escalation_policy_reference"
      }
    }
  }'
