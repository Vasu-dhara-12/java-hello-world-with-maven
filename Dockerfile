# Use official Prometheus image as base
FROM prom/prometheus:latest

# Copy your custom prometheus.yml into the container
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expose Prometheus default port
EXPOSE 9090

# Start Prometheus
CMD ["--config.file=/etc/prometheus/prometheus.yml"]
