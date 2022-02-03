FROM docker.io/stackstate/stackstate-agent-2-test:2.15.0

COPY conf.yaml /etc/stackstate-agent/conf.d/weather-integration.d/conf.yaml
COPY weather-integration.py /etc/stackstate-agent/checks.d/weather-integration.py

ENTRYPOINT [ "agent", "-c", "/etc/stackstate-agent/stackstate-docker.yaml", "check", "weather-integration" ]