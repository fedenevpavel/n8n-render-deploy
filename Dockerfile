FROM n8nio/n8n:1.32.2

# Устанавливаем переменные окружения
ENV NODE_ENV=production
ENV N8N_PROTOCOL=https
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://n8n-render-deploy-2.onrender.com
ENV N8N_ENCRYPTION_KEY=dNyqt3BNrivqFYE2W3SbtpqXvCLed72k  # Важно! Замените на случайную строку (минимум 16 символов)
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Открываем порт
EXPOSE 5678

# Используем стандартный способ запуска
CMD ["n8n", "start"]
