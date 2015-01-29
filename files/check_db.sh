if [ -d /var/lib/mysql/phabricator_auth ] ; then
    echo "using existing database"
else
    cd /var/www/phabricator
    ./bin/config set mysql.host ${MYSQL_HOST}
    ./bin/config set mysql.user ${MYSQL_USER}
    ./bin/config set mysql.pass ${MYSQL_PASS}
    ./bin/storage upgrade --force
fi
