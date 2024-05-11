<<<<<<< HEAD
Postmortem Report
Issue Summary:
•	Duration: May 10, 2024
•	Impact: Users experienced access issues with WordPress websites, receiving Apache 500 errors.
•	Root Cause: Incorrect PHP file extension in the WordPress settings file (/var/www/html/wp-settings.php) led to server errors.
Timeline:
•	00:05 PDT: Users encountered errors when accessing the site.
•	00:15 PDT: Database performance checked for any anomalies.
•	00:25 PDT: Apache server shutdown detected in /var/log.
•	00:30 PDT: Attempted rollback of WordPress files.
•	00:38 PDT: Executed fix by replacing incorrect PHP file extension and restarted Apache server.
•	00:40 PDT: Website resumed normal operation.
Root Cause and Resolution:
•	Root Cause: Incorrect file extension ("phpp") in wp-settings.php.
•	Resolution: Replaced incorrect extension with ".php" using the sed -i command.
Corrective and preventative measures must contain:
•	Conduct thorough testing of all PHP files to ensure correctness.
=======
# Postmortem Report
-------------------
**[Report for Error 500](https://github.com/ayaelsaid/alx-system_engineering-devops/tree/master/0x17-web_stack_debugging_3)**

## Issue Summary:
-----------------
**•	Duration:** May 10, 2024  
**•	Impact:** Users experienced access issues with WordPress websites, receiving Apache 500 errors.  
**•	Root Cause:** Incorrect PHP file extension in the WordPress settings file (/var/www/html/wp-settings.php) led to server errors.  
## Timeline:
-------------
**•	00:05 PDT:** Users encountered errors when accessing the site.  
**•	00:15 PDT:** Database performance checked for any anomalies.  
**•	00:25 PDT:** Apache server shutdown detected in /var/log.  
**•	00:30 PDT:** Attempted rollback of WordPress files.  
**•	00:38 PDT:** Executed fix by replacing incorrect PHP file extension and restarted Apache server.  
**•	00:40 PDT:** Website resumed normal operation.  
## Root Cause and Resolution:
------------------------------
**•	Root Cause:** Incorrect file extension ("phpp") in wp-settings.php.  
**•	Resolution:** Replaced incorrect extension with ".php" using the sed -i command.  
## Corrective and preventative measures must contain:
------------------------------------------------------
•	Conduct thorough testing of all PHP files to ensure correctness.  
>>>>>>> c1d1dc78f358be2d2bb332f6e1e58c914e489527
•	Regularly review WordPress configuration files to prevent misconfigurations.
