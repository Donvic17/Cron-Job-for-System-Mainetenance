# Cron Job for System Maintenance

This project automates routine system maintenance tasks on a Linux system using a shell script scheduled with cron.

## Tasks Automated:
- Clear cache files
- Monitor and log disk space usage
- Create a backup of the `/home` directory

## How to Use

1. Clone the repository:
   ```bash
   git clone https://github.com/donvic17/cron-system-maintenance.git

2. Navigate to the project directory:
   cd cron-system-maintenance

3. Make the shell script executable:
   chmod +x system_maintenance.sh

4.Run the script manually to test:
   ./system_maintenance.sh

5. Schedule the cron job: Open crontab using crontab -e and add the following line to schedule the script to run daily at midnight:
   
   0 0 * * * /path/to/project/cron-system-maintenance/system_maintenance.sh >> /var/log/system_maintenance.log 2>&1

