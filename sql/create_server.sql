CREATE SERVER data_node1 FOREIGN DATA WRAPPER mysql
OPTIONS(
    HOST '192.168.66.11',
    DATABASE 'spider',
    USER 'spider',
    PASSWORD 'Spider@123',
    PORT 3306
);

CREATE SERVER data_node2 FOREIGN DATA WRAPPER mysql
OPTIONS(
    HOST '192.168.66.12',
    DATABASE 'spider',
    USER 'spider',
    PASSWORD 'Spider@123',
    PORT 3306
);

CREATE SERVER data_node3 FOREIGN DATA WRAPPER mysql
OPTIONS(
    HOST '192.168.66.13',
    DATABASE 'spider',
    USER 'spider',
    PASSWORD 'Spider@123',
    PORT 3306
);


-- Reference
-- https://dev.mysql.com/doc/refman/5.7/en/create-server.html