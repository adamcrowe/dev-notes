<?php
// ! Arrays
// <http://php.net/manual/en/ref.array.php>

// !! Sorting arrays 
sort() 		// sort arrays in ascending order
rsort() 	// sort arrays in descending order
asort() 	// sort associative arrays in ascending order, according to the value
ksort() 	// sort associative arrays in ascending order, according to the key
arsort() 	// sort associative arrays in descending order, according to the value
krsort() 	// sort associative arrays in descending order, according to the key
?>

<?php
// !! In Array
// <http://php.net/manual/en/function.in-array.php>

// in_array(needle, haystack); 		
if(!in_array($quote->Status, array('Unsuccessful', 'Pending'))){
	?>
	<tr>
		<td colspan="2">
			<?php
				include('partials/quote_details/insert_orders.php');
			?>
		</td>
	</tr>
	<?php
	}

?>

<?php
// !! Array Keys 
// <http://php.net/manual/en/function.array-keys.php>
// <http://php.net/manual/en/function.array-flip.php>

// get only uniques from $quickfinds...
$uniqueQuickfinds = array_keys(array_flip($quickfinds));
?>