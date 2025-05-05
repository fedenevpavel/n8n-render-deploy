FROM n8nio/n8n

# Устанавливаем необходимые переменные окружения
ENV NODE_ENV=production
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Используем простой запуск без дополнительных команд
CMD ["n8n", "start"]
