<?php
	// Parameter num: integer
	// Return integer binary value
	if (isset($_GET['num'])) {
		if ($_GET['num'] == 0) {
			echo '0';
			return;
		}
		$ctr = 1;
		$num = $_GET['num'];
		$val = '';
		while ($num > $ctr)
			$ctr *= 2;
		if ($num < $ctr)
			$ctr /= 2;
		$num = $_GET['num'];
		for ($i = $ctr; $i > 1; $i /= 2) {
			if ($num >= $i) {
				$val .= '1';
				$num -= $i;
			} else {
				$val .= '0';
			}
		}
		echo $val . $num;
		return;
	}
