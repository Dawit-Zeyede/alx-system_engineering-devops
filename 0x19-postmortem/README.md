Postmortem(Incident) Report

=================== Summary of the Issue =================

  - Outage Duration: The website was down for approximately 1 hour and 20 minutes, starting from 02:15 AM to 03:35 AM UTC.
  - Impact: The outage resulted in complete inaccessibility of the website, with all users affected and unable to use the service.
  - Root Cause: The problem was caused by improper permissions set on the Nginx configuration file, which stopped the server from restarting correctly.

===================   Event Timeline  ===================

  - 02:15 AM - The monitoring system flagged that the site was down and triggered an alert.
  - 02:17 AM - The on-duty engineer received the alert and started looking into the issue.
  - 02:20 AM - The initial investigation focused on possible network issues, but no issues were found.
  - 02:45 AM - Attention shifted to the Nginx server, which was found to be non-operational.
  - 03:00 AM - Attempts to restart the server failed due to a permissions error on the configuration file.
  - 03:10 AM - The problem was escalated to a senior engineer for further analysis.
  - 03:20 AM - The senior engineer identified the permissions error and corrected it.
  - 03:30 AM - The Nginx server was successfully restarted.
  - 03:35 AM - The website was fully restored and operational again.

==================   Detailed Analysis and Resolution ================

  - Root Cause: The outage was traced back to incorrect permissions on the Nginx configuration file, which blocked the server from starting as intended. The issue became evident after other possible causes, such as network faults, were ruled out.
  - Resolution: The permissions were adjusted to the correct settings, which allowed Nginx to restart successfully, bringing the website back online.

=====================  Preventative and Corrective Actions =============

 - Areas for Improvement:
     - Introduce checks to verify file permissions before any server restarts.
     - Enhance monitoring systems to detect and alert on permission issues earlier.
 - Action Items:
     - Implement a pre-restart permission verification step in the deployment process.
     - Upgrade monitoring to include alerts for configuration file permission issues.
     - Organize a training session focused on avoiding common server configuration mistakes.
