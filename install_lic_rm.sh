#!/bin/bash

curl -u admin:admin123 \
  -H "Content-Type: application/octet-stream" \
  --data-binary '@./license.lic' \
  'http://localhost:8081/service/rest/v1/system/license'