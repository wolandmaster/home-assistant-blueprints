# Home Assistant Blueprints

This repository contain various blueprints for Home Assistant.

Each blueprint is a YAML file located in its own directory, and each directory includes a `test_ha.sh` script
that can be used to start Home Assistant in a local Docker container with that blueprint for testing.
The launched HA is reachable at the URL http://localhost:8123/ using the login credentials: test/test.

## Presence simulation

This Home Assistant blueprint implements a simple presence simulation.
It turns the specified light entities on for a random duration between the given minimum and maximum times,
then waits a random interval between another minimum and maximum before turning the light on again.

The specified lights are handled separately and independently; each light’s on/off switching is calculated
based on the time elapsed since its previous state change (except for the very first time,
because in that case all lights could be turned on at once if a long time has passed
since a given light’s last state change). It is possible to add additional conditions to the automation,
for example to activate it only after sunset and randomly switch the lights until midnight.

[![Open your Home Assistant instance and show the blueprint import dialog with a specific blueprint pre-filled.](https://my.home-assistant.io/badges/blueprint_import.svg)](https://my.home-assistant.io/redirect/blueprint_import/?blueprint_url=https%3A%2F%2Fgithub.com%2Fwolandmaster%2Fhome-assistant-blueprints%2Fblob%2Fmain%2Fpresence-simulation%2Fpresence-simulation.yaml)
