FROM homeassistant/home-assistant:latest

COPY test/.storage/* /config/.storage/
COPY test/*.yaml /config/

COPY presence-simulation.yaml /config/blueprints/automation/wolandmaster/
