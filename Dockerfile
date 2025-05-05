FROM n8nio/n8n

# Устанавливаем curl в Alpine Linux
RUN apk add --no-cache curl

# Регистрируем Webhook и запускаем n8n
CMD (curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_TOKEN/setWebhook?url=https://$RENDER_EXTERNAL_URL/webhook" || true) && \
    n8n start
