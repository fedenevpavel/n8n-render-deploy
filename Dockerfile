FROM n8nio/n8n

# Переключаемся на root для установки curl
USER root
RUN apk add --no-cache curl
# Возвращаемся к пользователю node
USER node

# Регистрируем Webhook и запускаем n8n
CMD (curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_TOKEN/setWebhook?url=https://$RENDER_EXTERNAL_URL/webhook" || true) && \
    n8n start
