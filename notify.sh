#!/bin/bash
TELEGRAM_BOT_TOKEN="7517325009:AAFTxEgA1-lMhfSb-3WYkCRReTNj_AlKowk"
TELEGRAM_USER_ID="6341406512"

URL="https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage"

TEXT="Deploy status: $1%0A%0AProject:+$CI_PROJECT_NAME%0AURL:+$CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0ABranch:+$CI_COMMIT_REF_SLUG"

curl -s -d "chat_id=$TELEGRAM_USER_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null
