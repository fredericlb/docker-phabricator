Docker container for Phabricator
================================


This image is based on dockerfiles/centos-lamp and provides a working instance of phabricator. 

A built image is available on the public docker registry with the name fredericlb/phabricator.

Features
--------

- Check if MySQL database is instanciated and run the db upgrade script if it's not
- Automatically runs the phd daemon with supervisord

Ports and mounts points
-----------------------

- Apache is running on port 80
- You need two mounted dirs to get a persistant instance of phabricator: /var/lib/mysql for the database and /var/repo for repositories.

Configuration
-------------

You shouldn't need to change the image to configure phabricator as nearly everything can be done from the UI.

