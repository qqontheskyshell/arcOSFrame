
#! /bin/bash

arcOSQQLocalTarget > /

#bundle
BUNDLE_ID="${1:?Usage: $0 com.example.app}"

xcrun simctl uninstall booted "$BUNDLE_ID" || true
xcrun simctl erase all

MDM_API_BASE="$APPLEMDM"
DEVICE_ID="$FULL_IOS_SERIAL"
APP_ID="*"

MDM_API_BASE="${MDM_API_BASE:?Set MDM_API_BASE}"
#MDM_TOKEN="${MDM_TOKEN:?Set MDM_TOKEN}"
DEVICE_ID="${1:?Usage: $0 DEVICE_ID APP_ID}"
APP_ID="${2:?Usage: $0 DEVICE_ID APP_ID}"

# 1. Remove managed app configuration
curl -sS -X DELETE \
  -H "Authorization: Bearer $MDM_TOKEN" \
    -H "Accept: application/json" \
      "${MDM_API_BASE}/devices/${DEVICE_ID}/apps/${APP_ID}/managed-config" || true

      # 2. Uninstall the app
      curl -sS -X POST \
        -H "Authorization: Bearer $MDM_TOKEN" \
          -H "Accept: application/json" \
            "${MDM_API_BASE}/devices/${DEVICE_ID}/apps/${APP_ID}/uninstall" || true
            /
/