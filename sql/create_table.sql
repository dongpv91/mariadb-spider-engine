-- spider node
CREATE TABLE spider.sp_test
(
    id int unsigned NOT NULL AUTO_INCREMENT
    , name char(120) NOT NULL DEFAULT ''
    , PRIMARY KEY (id)
)
ENGINE=spider
COMMENT='wrapper "mysql", table "sp_test"'
PARTITION BY KEY (id)
(
PARTITION dn1 COMMENT = 'srv "data_node1"'
, PARTITION dn2 COMMENT = 'srv "data_node2"'
, PARTITION dn3 COMMENT = 'srv "data_node3"'
);



-- data node
CREATE TABLE spider.sp_test
(
id int unsigned NOT NULL AUTO_INCREMENT
, name char(120) NOT NULL DEFAULT ''
, PRIMARY KEY (id)
)
ENGINE=innodb;