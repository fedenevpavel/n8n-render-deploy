FROM n8nio/n8n

CMD (wget -qO- "https://api.telegram.org/bot$TELEGRAM_TOKEN/setWebhook?url=https://$RENDER_EXTERNAL_URL/webhook" > /dev/null || true) && \
    n8n start
