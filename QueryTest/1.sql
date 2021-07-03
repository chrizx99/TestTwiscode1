CREATE TABLE IF NOT EXISTS `transaksi` (
	`id` INT(11) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`tanggal_order` DATETIME,
	`status_pelunasan` VARCHAR(10),
	`tanggal_pembayaran` DATETIME
);

INSERT IGNORE INTO `transaksi` VALUES
	(1, "2020-12-01 11:30:00", "lunas", "2020-12-01 12:00:00"),
	(2, "2020-12-02 10:30:00", "pending", NULL)
;
