#!/bin/bash
:<<'TASK'
Service-CLI
Ergänzen Sie die Lücken im Bash-Code unten, um einen einfachen Command Line Interpreter (CLI)
zur Verwaltung von simulierten Services zu programmieren.
Ein Teil des Ablaufs ist in diesem Diagramm 02_service-interface.png abgebildet.

TASK

# Text colors
GREEN="\e[32m"
YELLOW="\e[33m"
RED="\e[31m"
BLUE="\e[34m"
RESET="\e[0m"

# Initial state
service_status="stopped"

# Function to display status
show_status() {
  echo -e "Current service status: ${BLUE}${service_status}${RESET}"
}

# Function to simulate delay
simulate_action() {
  echo -n "Processing"
  for i in {1..3}; do
    echo -n "."
    sleep 0.5
  done
  echo ""
}

# Main loop
echo ""
echo "----------------------------------"
echo -e "${YELLOW}Service Control Menu${RESET}"
echo "----------------------------------"
# elect between Start Stop Pause Restart Status Exit
#??
#??
#??
    # Start service
    Start)
      # if service_status is running then
#??
        echo -e "${RED}Service is already running.${RESET}"
      else
        simulate_action
        service_status="running"
        echo -e "${GREEN}Service started successfully.${RESET}"
#??
#??
    # Stop service
#??
      # if service_status is stopped then
#??
        echo -e "${RED}Service is already stopped.${RESET}"
      else
        simulate_action
        service_status="stopped"
        echo -e "${GREEN}Service stopped.${RESET}"
#??
#??
    # Pause service
#??
      # if service_status is paused then
#??
        echo -e "${YELLOW}Service is already paused.${RESET}"
      elif [[ "$service_status" == "running" ]]; then
        simulate_action
        service_status="paused"
        echo -e "${GREEN}Service paused.${RESET}"
      else
        echo -e "${RED}Cannot pause a service that isn't running.${RESET}"
#??
#??
    # Restart service
#??
#??
        echo -e "${YELLOW}Service is not running — starting fresh.${RESET}"
#??
      simulate_action
      service_status="running"
      echo -e "${GREEN}Service restarted successfully.${RESET}"
#??
    # Get Status
#??
      # show status
#??
#??
#??
      echo -e "${BLUE}Exiting Service Manager. Goodbye!${RESET}"
#??
#??
#??
      echo -e "${RED}Invalid selection! Please try again.${RESET}"
#??
#??
#??
