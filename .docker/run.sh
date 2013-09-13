#!/bin/sh
GRAPHITE_ROOT=/opt/graphite
APP_DIR=$GRAPHITE_ROOT/webapp/graphite
DB_HOST=${DB_HOST:-}
DB_PORT=${DB_PORT:-}
DB_NAME=${DB_NAME:-$GRAPHITE_ROOT/storage/graphite.db}
DB_USER=${DB_USER:-}
DB_PASS=${DB_PASS:-}
DB_TYPE=${DB_TYPE:-sqlite3}

cat << EOF > $APP_DIR/local_settings.py
DATABASE_ENGINE = '$DB_TYPE'
DATABASE_NAME = '$DB_NAME'
DATABASE_USER = '$DB_USER'
DATABASE_PASSWORD = '$DB_PASS'
DATABASE_HOST = '$DB_HOST'
DATABASE_PORT = '$DB_PORT'

EOF

cd $APP_DIR && python manage.py syncdb --noinput

supervisord -c /etc/supervisor/supervisor.conf -n
