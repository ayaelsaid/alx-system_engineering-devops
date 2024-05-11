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
•	Regularly review WordPress configuration files to prevent misconfigurations.
