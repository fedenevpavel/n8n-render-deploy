FROM n8nio/n8n
RUN apt-get update && apt-get install -y curl
CMD (curl -X POST "https://api.telegram.org/bot$TELEGRAM_TOKEN/setWebhook?url=https://$RENDER_EXTERNAL_URL/webhook" || true) && \
    n8n start
