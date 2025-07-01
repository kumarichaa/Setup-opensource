#!/bin/bash

# Define global array of Open5GS services
services=(
    "open5gs-smfd.service"
    "open5gs-amfd.service"
    "open5gs-upfd.service"
    "open5gs-pcfd.service"
    "open5gs-hssd.service"
    "open5gs-nssfd.service"
    "open5gs-scpd.service"
    "open5gs-sgwud.service"
    "open5gs-udrd.service"
    "open5gs-ausfd.service"
    "open5gs-mmed.service"
    "open5gs-seppd.service"
    "open5gs-bsfd.service"
    "open5gs-nrfd.service"
    "open5gs-pcrfd.service"
    "open5gs-sgwcd.service"
    "open5gs-udmd.service"
    "open5gs-webui.service"
)

# Menu
echo "Choose an option:"
echo "1: Restart Services"
echo "2: Status of Services"
echo "3: Stop Services"
echo "4: Start Services"
echo "5: Enable Services"

read -p "Enter option number: " option

# Function to perform systemctl action
perform_action() {
    action=$1
    for service in "${services[@]}"; do
        echo "$action $service..."
        sudo systemctl "$action" "$service"
        if [ $? -eq 0 ]; then
            echo "$service $action successful."
        else
            echo "Failed to $action $service."
        fi
    done
}

# Handle user option
case "$option" in
    1)
        perform_action restart
        ;;
    2)
        for service in "${services[@]}"; do
            echo "Status of $service:"
            systemctl status "$service" --no-pager
            echo ""
        done
        ;;
    3)
        perform_action stop
        ;;
    4)
        perform_action start
        ;;
    5)
        perform_action enable
        ;;
    *)
        echo "Invalid option. Please choose between 1-5."
        ;;
esac



$ chmod +x script_file_name.sh   # Make the script executable
$ ./script_file_name.sh          # Execute the script

## Replace script_file_name.sh with the actual name of your script file.