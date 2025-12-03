# Use official nginx image
FROM nginx:stable-alpine

# Remove default nginx website (optional but safer)
RUN rm -rf /usr/share/nginx/html/*

# Copy your html files (assuming they are in repo root)
COPY . /usr/share/nginx/html/

# Expose the port on which nginx listens (container internal port)
EXPOSE 80

# Run nginx in foreground (default command of nginx image usually does this)
CMD ["nginx", "-g", "daemon off;"]
