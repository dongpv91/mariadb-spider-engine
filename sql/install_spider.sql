SOURCE /usr/share/mysql/install_spider.sql

SELECT engine, support, transactions, xa FROM information_schema.engines;

MariaDB [(none)]> SELECT engine, support, transactions, xa FROM information_schema.engines;
+--------------------+---------+--------------+------+
| engine             | support | transactions | xa   |
+--------------------+---------+--------------+------+
| SPIDER             | YES     | YES          | YES  |
| MRG_MyISAM         | YES     | NO           | NO   |
| CSV                | YES     | NO           | NO   |
| MEMORY             | YES     | NO           | NO   |
| MyISAM             | YES     | NO           | NO   |
| Aria               | YES     | NO           | NO   |
| InnoDB             | DEFAULT | YES          | YES  |
| PERFORMANCE_SCHEMA | YES     | NO           | NO   |
| SEQUENCE           | YES     | YES          | NO   |
+--------------------+---------+--------------+------+
9 rows in set (0.000 sec)
