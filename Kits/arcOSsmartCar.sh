#!/usr/bin/env bash
set -euo pipefail


getVehicleID=(
for id in $(curl -s "https://api.smartcar.com/v2.0/vehicles" \
  -H "Authorization: Bearer ${SMARTCAR_TOKEN}" | jq -r '.vehicles[]'); do
    ionic_five=$(curl -s "https://api.smartcar.com/v2.0/vehicles/${id}" \
        -H "Authorization: Bearer ${SMARTCAR_TOKEN}" \
          | jq 'select(.make=="HYUNDAI") | {id, make, model, year}')
done
)


manageEVcharge "STOP" &
manageEVcharge=(
Charge_State=$1
#VEHICLE_ID="${VEHICLE_ID:?Set VEHICLE_ID}"
VEHICLE_ID="$ionic_five.id"
SMARTCAR_TOKEN="*"

curl --fail --silent --show-error \
  "https://api.smartcar.com/v2.0/vehicles/${VEHICLE_ID}/charge" \
    -H "Authorization: Bearer ${SMARTCAR_TOKEN}" \
      -X POST \
        -H "Content-Type: application/json" \
          -d '{"action":"$Charge_State"}'
          exit 0 &
)
