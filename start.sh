#! /bin/bash

# 1. Install Apache

    sudo yum install -y httpd

# 2. Copy webpage files from S3 and place them in /var/www/html

    mkdir ~/s3files/webpage
    cd ~/s3files/webpage
    sudo aws s3 cp s3://myec2testbucket-123456/webpage/build/ . --recursive
    sudo cp -RT ~/s3files/webpage /var/www/html

# 3. Enable and start httpd

    sudo systemctl enable httpd
    sudo systemctl start httpd

exit 0