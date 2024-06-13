#!/bin/bash

echo "  ____  _| |__  __ _ _ _____ __ __"
echo " (_-< || | '_ \/ _| '_/ _ \ V  V /"
echo " /__/\_,_|_.__/\__|_| \___/\_/\_/"

echo "1. SCANNING"
echo "2. SUBDOMAIN ENUMERATION"
echo "3. CUSTOM NETWORK ENUMERATION"

read -p "Enter the option: " option

if [ "$option" == "1" ]; then
    echo "Scanning"
    read -p "ENTER THE DOMAIN/TARGET: " target
    nmap -sV -sC -Pn $target -oN "$target.txt"
    echo "Output saved as --> $target.txt"
elif [ "$option" == "2" ]; then
    read -p "Enter the Domain/Target: " domain
    assetfinder -subs-only $domain | tee "sub_$domain.txt"
    echo "FINISHED SCANNING"
    wc -l "sub_$domain.txt"
elif [ "$option" == "3" ]; then
    read -p "Enter the Domain/Target: " domain1
    echo "1. smb-enum-domains.nse"
    echo "2. whois-domain.nse"
    echo "3. http-slowloris.nse"
    echo "4. http-slowloris-check.nse"
    read -p "Enter your choice: " choice
    case $choice in
        1)
            script="smb-enum-domains.nse"
            ;;
        2)
            script="whois-domain.nse"
            ;;
        3)
            script="http-slowloris.nse"
            ;;
        4)
            script="http-slowloris-check.nse"
            ;;
        *)
            echo "Invalid choice"
            exit 1
            ;;
    esac
    sudo nmap --script=$script -Pn $domain1 | tee "$domain1.txt"
    echo "Output saved as --> $domain1.txt"
else
    echo "OOPS NOT AVAILABLE"
fi
