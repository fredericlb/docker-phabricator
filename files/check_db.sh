if [ -d /var/lib/mysql/phabricator_auth ] ; then
    echo "using existing database"
else
    cd /var/www/phabricator
    ./bin/storage upgrade --force
fi
