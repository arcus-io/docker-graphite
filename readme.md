# Graphite

Graphite monitoring and reporting

* `docker build -t graphite .`
* `docker run graphite`

Ports

* 80
* 2003
* 2004
* 2013
* 2014
* 2023
* 2024
* 7002
* 8125
* 23632
* 25826

Environment Variables

* `DB_HOST`: Database host (optional)
* `DB_PORT`: Database port (optional)
* `DB_NAME`: Database name (default: graphite.db)
* `DB_USER`: Database user (optional)
* `DB_PASS`: Database password (optional)
* `DB_TYPE`: Database engine (`mysql`, `postgres`, or `sqlite3` default: `sqlite3`)
