#!/bin/bash
DAY=$(date -u +%u)
echo "=== AON FB Autonomous Cloud - $(date -u) ==="
if [ "$DAY" = "1" ]; then echo "JOB: HOOK1_PEDS - Peds $900K due Jan 25 2027"; fi
if [ "$DAY" = "3" ]; then echo "JOB: HOOK2_988 - 988 $90K questions Nov 30 deadline Dec 18"; fi
if [ "$DAY" = "5" ]; then echo "JOB: HOOK3_PROOF - 1 workflow 2 weeks measured"; fi
if [ "$DAY" = "7" ]; then echo "JOB: AUDIT - fb_log.csv 1-min views, shares, link clicks, DMs, pilot inquiries"; fi
echo "Link: https://allornothin.netlify.app"
echo "Reply-To: hello@all-nothin.com"
echo "Ghost: No calls, no voice, forms/DM only"
