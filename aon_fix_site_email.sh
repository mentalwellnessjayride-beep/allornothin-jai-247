#!/bin/bash
echo "=== AON SITE + EMAIL - $(date -u) UTC ==="
curl -s -o /dev/null -w "Netlify -> %{http_code}\n" https://allornothin.netlify.app
curl -s -o /dev/null -w "Org -> %{http_code}\n" https://allornothin.org
curl -s -o /dev/null -w "Org www -> %{http_code}\n" https://www.allornothin.org
curl -s -o /dev/null -w "Commercial -> %{http_code}\n" https://all-ornothin.com
dig +short allornothin.org || nslookup allornothin.org
for s in default google selector1; do echo -n "$s._domainkey.all-nothin.com: "; dig +short TXT $s._domainkey.all-nothin.com || echo "NXDOMAIN"; done
echo "If Org not 200, use Netlify link only. If DKIM NXDOMAIN, do NOT claim verified."
