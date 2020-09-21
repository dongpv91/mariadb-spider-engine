-- spider node
CREATE TABLE spider.sp_test2
(
    id int unsigned NOT NULL AUTO_INCREMENT
    , name char(120) NOT NULL DEFAULT ''
    , PRIMARY KEY (id)
)
ENGINE=spider
COMMENT='wrapper "mysql", table "sp_test"'
PARTITION BY KEY (id)
(
PARTITION dn11 COMMENT = 'srv "data_node1"'
, PARTITION dn22 COMMENT = 'srv "data_node2"'
, PARTITION dn33 COMMENT = 'srv "data_node3"'
);


CREATE TABLE spider.test
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
) ENGINE=Spider
    COMMENT='wrapper "mysql", srv "data_node1", table "sp_test"';




-- data node
CREATE TABLE spider.sp_test
(
id int unsigned NOT NULL AUTO_INCREMENT
, name char(120) NOT NULL DEFAULT ''
, PRIMARY KEY (id)
)
ENGINE=innodb;