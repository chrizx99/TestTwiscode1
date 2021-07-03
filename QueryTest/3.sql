SELECT
	`h`.`id`,
	`h`.`tanggal_order`,
	`h`.`status_pelunasan` AS "status",
	`h`.`tanggal_pembayaran`,
	ROUND(SUM(`i`.`subtotal`)) AS "total",
	ROUND(SUM(`i`.`jumlah`)) AS "jumlah_barang",
	"" AS ""
FROM `transaksi` `h`
LEFT JOIN `transaksi_item` `i` ON `h`.`id` = `i`.`id_transaksi`
GROUP BY `h`.`id`