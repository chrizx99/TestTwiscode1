<?php
	// Parameter num: integer
	// Return integer decimal value
	if (isset($_GET['num'])) {
		$nums = str_split($_GET['num']);
		$val = 0;
		foreach ($nums as $i => $flag) {
			if ($flag == 1)
				$val += pow(2, (count($nums) - $i - 1));
		}
		echo $val;
	}
