CREATE TABLE IF NOT EXISTS `transaksi_item` (
	`id` INT(11) UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	`id_transaksi` INT(11) UNSIGNED REFERENCES `transaksi`(`id`),
	`harga` DECIMAL(16, 2),
	`jumlah` DECIMAL(16, 2),
	`subtotal` DECIMAL(16, 2)
);

INSERT IGNORE INTO `transaksi_item` (`id_transaksi`, `harga`, `jumlah`, `subtotal`) VALUES
	(1, 4000, 1, 4000),
	(1, 16000, 1, 16000),
	(2, 6250, 4, 25000)
;
