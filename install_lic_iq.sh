#/bin/bash

curl -u admin:admin123 \
  -F file="@./license.lic" \
  http://localhost:8070/api/v2/product/license