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
