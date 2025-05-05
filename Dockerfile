FROM n8nio/n8n:1.32.2

# Устанавливаем переменные окружения
ENV NODE_ENV=production
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Используем стандартный способ запуска
CMD ["node", "/usr/local/bin/n8n"]
