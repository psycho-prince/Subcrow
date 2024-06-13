### SubCrow: Subdomain Finder and Vulnerability Checker

**Description:**
SubCrow is a straightforward command-line tool for Linux designed to help cybersecurity professionals and network administrators quickly identify subdomains and check for vulnerabilities. It offers three main functionalities:

1. **Scanning:**
   - Performs a comprehensive Nmap scan with version detection and default scripts.
   - Saves the scan results to a file for further analysis.

2. **Subdomain Enumeration:**
   - Uses `assetfinder` to find subdomains for a specified domain.
   - Outputs the list of subdomains to a file and provides a count of the subdomains found.

3. **Custom Network Enumeration:**
   - Executes specific Nmap NSE scripts to check for various vulnerabilities on a target domain.
   - Allows users to choose from predefined scripts and saves the output to a file.

SubCrow is an essential tool for automating subdomain discovery and vulnerability assessment, helping professionals maintain secure and robust network infrastructures.

**Commands:**
- **Scanning:**
  ```sh
  ./subcrow.sh

  # Select option 1
  1. SCANNING
  Enter the option: 1

  # Enter the target domain
  ENTER THE DOMAIN/TARGET: example.com
  ```
  This will run an Nmap scan on `example.com` and save the results to `example.com.txt`.

- **Subdomain Enumeration:**
  ```sh
  ./subcrow.sh

  # Select option 2
  2. SUBDOMAIN ENUMERATION
  Enter the option: 2

  # Enter the target domain
  Enter the Domain/Target: example.com
  ```
  This will find subdomains for `example.com` using `assetfinder` and save the results to `sub_example.com.txt`.

- **Custom Network Enumeration:**
  ```sh
  ./subcrow.sh

  # Select option 3
  3. CUSTOM NETWORK ENUMERATION
  Enter the option: 3

  # Enter the target domain
  Enter the Domain/Target: example.com

  # Select the desired NSE script
  1. smb-enum-domains.nse
  2. whois-domain.nse
  3. http-slowris.nse
  4. http-slowris-check.nse
  Enter your choice: 1
  ```
  This will run the `smb-enum-domains.nse` script on `example.com` and save the results to `example.com.txt`.

**Example Usage:**
To run the script, ensure it is executable and then execute it from the terminal:
```sh
chmod +x subcrow.sh
./subcrow.sh
```
