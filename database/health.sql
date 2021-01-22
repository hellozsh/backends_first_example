CREATE TABLE `t_checkgroup`  (
  `id` int NOT NULL,
  `code` varchar(32) NULL,
  `name` varchar(32) NULL,
  `helpCode` varchar(32) NULL,
  `sex` char(1) NULL,
  `attention` varchar(128) NULL,
  `remark` varchar(128) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `t_checkitem`  (
  `id` int NOT NULL,
  `code` varchar(16) NULL,
  `name` varchar(32) NULL,
  `sex` char(1) NULL,
  `age` varchar(32) NULL,
  `price` float NULL,
  `type` char(1) NULL,
  `attention` varchar(128) NULL,
  `remark` varchar(128) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `t_menu`  (
  `id` int NOT NULL,
  `name` varchar(32) NULL,
  `linkUrl` varchar(128) NULL,
  `path` varchar(128) NULL,
  `priority` int NULL,
  `description` varchar(128) NULL,
  `parentMenuIdint` int NULL,
  `icon` varchar(64) NULL,
  `level` int NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `t_order`  (
  `id` int NOT NULL,
  `member_id` int NULL,
  `orderDate` date NULL,
  `orderType` varchar(8) NULL,
  `orderStatus` varchar(8) NULL,
  `setmeal_id` int NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `t_setmeal`  (
  `id` int NOT NULL,
  `name` varchar(32) NULL,
  `code` varchar(32) NULL,
  `helpCode` varchar(32) NULL,
  `sex` char(1) NULL,
  `age` varchar(128) NULL,
  `price` float NULL,
  `remark` varchar(128) NULL,
  `attention` varchar(128) NULL,
  `img` varchar(128) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `table_1`  ();

