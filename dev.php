+===================================================================================================
| PROGRAMMING...
+===================================================================================================
<script>
/* Argument = */ makeSandwich('ham');
/* Parameter = */ function makeSandwich(filling) {}
</script>

+--------------------------------------------------------------------------------------------------------------------------------
+ JS: DOWNLOAD FILES AND RENAME
+--------------------------------------------------------------------------------------------------------------------------------
cd repo

curl http://code.jquery.com/jquery-1.9.1.min.js > jquery-1.9.1.min.js 
curl https://github.com/downloads/wycats/handlebars.js/handlebars-1.0.rc.1.min.js > Handlebars.js

+--------------------------------------------------------------------------------------------------------------------------------
+ JS: GET NUMBER OF ITEMS/KEYS IN OBJECT
+--------------------------------------------------------------------------------------------------------------------------------
<script>
// tests is an object...
var numberOfTests = Object.keys(tests).length;
</script>

+--------------------------------------------------------------------------------------------------------------------------------
+ JS: ADD ELEMENT TO DOM
+--------------------------------------------------------------------------------------------------------------------------------
<script>
var summaryString = ('Tests: ' + numberOfTests + '. PASSED: ' + passed + '. FAILED: ' + failures + '.');
var summaryElement = document.createElement('h1');
summaryElement.textContent = summaryString;
document.body.appendChild(summaryElement);
</script>			

+--------------------------------------------------------------------------------------------------------------------------------
+ JS: GET BOOLEAN VALUE OF...
+--------------------------------------------------------------------------------------------------------------------------------	
<script>
!!(null) === false; // true
!!(0) === true; // false
!!(1) === true; // true
!!(001) === true; // true
!!('true') === true; // true
!!('false') === false; // false
!!('') === true; // false
!!(' ') === true; // true
!!({}); // true
!!([]); // true
!!(function() {}); // true
Boolean(0) === false; // true
Boolean(1) === false; // false
Boolean(' ') === true; // true
</script>

+--------------------------------------------------------------------------------------------------------------------------------
+ JS: hasOwnProperty(property) // ONLY GET NON PROTOTYPE PROPERTIES OF AN OBJECT
+--------------------------------------------------------------------------------------------------------------------------------
<script>
var dog = {
	// prototype properties
	bark: function() {
		console.log('bark');
	}
}

var myDog = Object.create(dog); 
// non-prototype property
myDog.name = 'Rover';

for (property in myDog) {
	console.log(property); // returns: bark, name
}

// only get non prototype properties of an object
for (property in myDog) {
	if (myDog.hasOwnProperty(property)) {
		console.log(property)
	}
} // returns: name

</script>

+--------------------------------------------------------------------------------------------------------------------------------
+ JS: TEST FOR STRING (FROM accounting.js)
+--------------------------------------------------------------------------------------------------------------------------------
<script>
/**
 * Tests whether supplied parameter is a string
 * from underscore.js
 */
function isString(obj) {
	return !!(obj === '' || (obj && obj.charCodeAt && obj.substr));
}
</script>

+--------------------------------------------------------------------------------------------------------------------------------
+ JS: ROUNDING FLOATS (FROM watchandcode https://watchandcode.com/courses/77710/lectures/2228465 and accounting.js toFixed)
+--------------------------------------------------------------------------------------------------------------------------------
<script>
function roundFloat(value, precision) {
	// value = 1.005; precision = 2; result we want = 1.01
	// 1.005e2 == 1.005 * 100 == 100.5
	var exponentialForm = Number(value + 'e' + precision);
	// 100.5 rounded = 101
	var rounded = Math.round(exponentialForm);
	// 101 ==> 101e-2 == 101/100 == 1.01
	var result = rounded + 'e-' + precision;
	return result;
}
</script>

+--------------------------------------------------------------------------------------------------------------------------------
+ RECURSION (Making a function call itself)
+--------------------------------------------------------------------------------------------------------------------------------
<script>
function unwrapArray(data) {
	// Base case (exit recursion):
	if (!Array.isArray(data)) {
		return data;
	// Recursive case:
	} else {
		return unwrapArray(data[0]);
	}
}
// unwrapArray([[[[[['wrapped']]]]]]);
</script>

<script>
// 4! = 4 * 3 * 2 * 1
// n! = n * (n - 1)!
function factorial(n) {
	// Base case (exit recursion):
	if (n === 1) {
		return 1;
	// Recursive case:
	} else {
		return n * factorial(n - 1);
	}
}
</script>

<script>
// Traverse the DOM
function logEachChildElement(element) {
	// Every case: Log the current element:
	console.log(element);
	// Recursive case: Repeat steps for each child element:
	if(element.children.length > 0) {
		for (var i = 0; i < element.children.length; i++) {
			logEachChildElement(element.children[i]);
		}
	}
	// Base case or exit recursive case:
	// If there are no children, do nothing
	 
}
</script>

<script>
// Traverse and process DOM elements
function forEachChildElement(element, callback) {
	// Every case: Run callback on the current element:
	callback(element);
	// Recursive case: Repeat steps for each child element:
	if(element.children.length > 0) {
		for (var i = 0; i < element.children.length; i++) {
			forEachChildElement(element.children[i], callback);
		}
	}
	// Base case (exit recursion): If there are no children, do nothing
}
// usage:
forEachChildElement(document.body, function(element) {
	console.log(element.nodeName);
});
</script>

<script>
// Unknown Array Depth Problem: nestedArrays = [[1, 2, 3], [4, 5, 6], [7, 8, 9, [10, 11, 12]]]);
function formatMoney(numbers) {
	// Recursive case:
	if (Array.isArray(numbers)) {
		return numbers.map(function mapper(element) { // named `mapper` for ease of call stack debugging
			// 1. map seeks to duplicate array structure of numbers but with transformed elements
			// 2. keep sending element through the function until the element is *not* an array
			// 3. add to transformed element into the duplicated array structure of numbers
			return formatMoney(element);
		});
	// Base case: numbers/(element) is not an array, so transform it and add to mapped array
	} else {
		return '$' + numbers;
	}
}
// usage
nestedArrays = [[1, 2, 3], [4, 5, 6], [7, 8, 9, [10, 11, 12]]];
formatMoney(nestedArrays);
</script>

####################################################################################################
# DLO:
####################################################################################################

+======================================================================================================================================================================
| BUFFER...
+======================================================================================================================================================================

See Notepad++

Enable Cache
javascript:document.cookie="debugDisableCache=0";location.reload();

Disable Cache
javascript:document.cookie="debugDisableCache=1";location.reload();

+======================================================================================================================================================================
| WORKING ON... 
+======================================================================================================================================================================

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: JOB TASK INTERNAL NOTES DISAPPEARING (UNRESOLVED)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

http://www.cjelectrical.co.uk/admin/job_details.php?jobid=70781

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: FIRE: MERGE DUPLICATE ORGANISATIONS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Boydens
SELECT * FROM organisation WHERE Org_Name LIKE '%Boydens%';
SELECT * FROM contact WHERE Contact_ID=65532; -- org was 9498 now 17115
SELECT * FROM contact WHERE Contact_ID=77448; -- org 17115

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: SCRIPT TO IDENTIFY DUPLICATE PRODUCT DOWNLOADS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT pd.id AS productDownloadId, an.id AS AssetNameId, a.id AS AssetId, an.name, pd.name, a.size
FROM product_download AS pd
INNER JOIN asset_name AS an ON an.id=pd.assetNameId
INNER JOIN asset AS a ON a.id=an.assetId
ORDER BY pd.name ASC;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: QUOTE > USE DEFAULT ADDRESS ERROR
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

Fatal error: Call to a member function GetTax() on null in /var/www/vhosts/elementshop.co.uk/httpdocs/admin/lib/classes/Quote.php on line 839 
https://www.elementshop.co.uk/admin/quote_details.php?quoteid=99779

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: ROINTE HEATING DESIGN SERVICE
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

http://dev.elementshop.co.uk/rointeheatingdesignservice.php

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: CJECO ONLINE HELP CHAT
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM users;
SELECT * FROM users WHERE User_ID IN (9, 142, 73, 92);

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: CONTRACTING OVERHAUL
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

# dataCommit on all classes
# Set FKs on all uses of contactId
# Apply elements UI and strip out unneccessary nav-related DB tables 

- Simple Query to identify Foreign Key references on Deadlocked Tables
- http://www.chriscalender.com/simple-query-to-identify-foreign-key-references-on-deadlocked-tables/

	SELECT * FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE 
	WHERE REFERENCED_TABLE_NAME='parent';

	SELECT CONSTRAINT_SCHEMA, CONSTRAINT_NAME, TABLE_SCHEMA, 
		TABLE_NAME, COLUMN_NAME, REFERENCED_TABLE_SCHEMA, 
		REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME 
	FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE 
	WHERE REFERENCED_TABLE_NAME='parent';

	Where `parent` is the name of the table you’re searching for.

- How do I see all foreign keys to a table or column?
- http://stackoverflow.com/questions/201621/how-do-i-see-all-foreign-keys-to-a-table-or-column

	SELECT TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
	FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
	WHERE REFERENCED_TABLE_NAME = '<table>'; -- parent

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: NEW PRODUCT DOWNLOADS BACK END (USING ASSET CACHE) AND FRONT END (SHOWING FIRST PAGE IMAGE PREVIEWS)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- add assetNameId to product_download
- hash flat files using script - http://www.elementshop.co.uk/Scripts/asset_product_download.php
- create new upload mechanism for product_downloads (based on quote_documents)
- create first page previews (based on cjec system... find image magick/ask ron)
- https://www.elementshop.co.uk/admin/product_downloads.php?action=update&id=44
- DESC product_download; -- previewAssetNameId using... Imagick (search CJEC repo)

- run this: https://www.elementshop.co.uk/Scripts/product_downloads_previews.php
- test product: https://www.heatershop.co.uk/rointe-kyros-kri0550rad2-550w-electric-radiator-520mm-5-elements
 
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: ACTIVITY TRACKING
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Plugged holes in search of leaky bucket...
-- capture popularity tracker based on modules loaded (prod, cat, faq) rather than orders
--- index.php --> goes to module.php and returns to index a module reference id
--- in index... use $pageModuleReferenceId to populate popularity db table

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: EXPORT PO TO SAGE
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

http://dev.elementshop.co.uk/admin/purchase_details.php?purchaseid=15352
http://dev.elementshop.co.uk/admin/purchase_batch_invoice_view.php?id=14507

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: CMS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

http://dev.elementshop.co.uk/admin/content_class.php
http://sys.elementshop.co.uk/admin
http://sys.elementshop.co.uk/admin/content/class/attribute/index/2 -- add attributes to content_class
http://sys.elementshop.co.uk/content/view/4

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: P/O INVOICE IMPORT
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

// Manually deleting emails so don't delete Edmundson
// Waiting for Edmundson to begin emailing their invoices
// Waiting for WFSenate to okay integration and provide test data

// GripFixings

SELECT DATE_FORMAT(p.Created_On, '%Y %m') AS Month, Count(*) AS Purchases
FROM purchase AS p WHERE Warehouse_ID=817
GROUP BY Month DESC;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: INTERLINK INTEGRATION 
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

// Waiting for getShipment and createManifest APIs....
// Manually fixing consignment numbers until interlink fix 9-character limit
-- 1018 consignment[0].deliveryDetails.address.countryCode Validation Invalid field --- JE == Jersey (Asana task: Interlink postcode for UK shipping scrutiny)

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: PRODUCT VIDEO MANAGEMENT + REPLACE PRODUCT VIDEOS WITH NEW FEATHERLIGHT GALLERY LIGHT BOX
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Commit: 771727ca0f3344b90f02d2cda1f1f695cd49e1fc
Swipebox. A touchable jQuery lightbox. - http://brutaldesign.github.io/swipebox/

+=======================================================================================================================================================================
| HOLDING...
+=======================================================================================================================================================================

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: ABILITY TO EMAIL EXISTING JOB ALERTS TO JOB LEAD REP THROUGH ICON AT END OF EACH ALERT
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

http://dev.cjec.co.uk/admin/job_details.php?jobid=59248 // alert example [add email icon/func]
http://dev.cjec.co.uk/admin/job_add_email.php?jobid=59248&action=alert&alertid=19664 -- send email alert

http://dev.cjec.co.uk/admin/job_details.php?jobid=59169 // note example [see email icon/func]
http://dev.cjec.co.uk/admin/job_add_email.php?jobid=59169&action=note&noteid=15933 

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: LEADS CALENDAR APPOINTMENTS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// System/API/Lead/UpdateAppointment.php
require_once('../../Header.php');
import('System/Framework/Object/Lead.php');

$lead = new LeadDataObject();

if(!isParam('id') || !$lead->select(paramInt('id'))) {
	header("HTTP/1.1 404 Not Found");
	exit;
}

if(isParam('reps')) {
	$lead->setValue('repOfficeWorkerId', param('value'));
}
if(isParam('date') || isParam('time')) {
	$lead->setValue('bookedOn', param('value'));
}
//if(isParam('time')) {
	// $lead->setValue('bookedOn', param('value'));
//}
if(isParam('duration')) {
	$lead->setValue('bookingDuration', param('value'));
}

$lead->save();

echo true;

/* 15 (98px = 900secs, 30 (98px = 1800secs), 60 (98px = 3600secs) ... default = 7200secs

// Centralize positioning code in Common
// Create API for validating and updating the lead via the jQ form, else return error... see API folder
// 
// http://jqueryui.com/dialog/#modal-form
// http://api.jquery.com/attr/

// Calendar showing appointments booked time for each Sales Rep (repOfficeWorkerId)
// SELECT * FROM lead ORDER BY bookedOn DESC limit 100; 
// Form filters: 
// Date // Default is tommorrow so user can see what's upcoming
// Office // Will show all users for office (SmartGen New Dawn)
// User // Toggle to show only a single user (from all users)

switch($form->GetValue('zoom')) {
	case 60:
		// $d = $leadRow['bookingDuration'] * 0.0272;
		$d = (($intervalHeight * 2) / $leadRow['bookingDuration'] * $leadRow['bookingDuration']);
		break;

	case 30:
		// $d = $leadRow['bookingDuration'] * 0.0544;
		$d = (($intervalHeight * 4) / $leadRow['bookingDuration'] * $leadRow['bookingDuration']);
		break;
	
	case 15:
		// $d = $leadRow['bookingDuration'] * 0.1089;
		$d = (($intervalHeight * 8) / $leadRow['bookingDuration'] * $leadRow['bookingDuration']);
		break;	
}							
					
?>

<tr>
	<!-- show only one office worker at a time -->
	<th>Time</th>

	<?php
	foreach($officeWorkers as $officeWorker) {
		echo '<th>' . $officeWorker['leadName'] . '</th>';
	}
	?>
</tr>


// ($j==0) $k='00' : $k=$j; 

/*
for($j=0; $j<60; $j+=15) {
	if($j==0) {
		echo '<td>' . $i . ':' . '00' . '</td>';

		$cells = count($officeWorkerList);
		while($cells > 0) {
			echo '<td>' . $cells . '</td>';
			$cells--;
		}

		echo '</tr>';

	} else {
		echo '<td>' . $i . ':' . $j . '</td>';

		$cells = count($officeWorkerList);
		while($cells > 0) {
			echo '<td>' .  $cells . '</td>';
			$cells--;
		}

		echo '</tr>';
	}
}
*/

/*
<?php

$startTime = 10;
$endTime = 23;

for($i=$startTime; $i<$endTime; $i++) {

	echo '<tr>';

	for($j=0; $j<60; $j+=15) {

		if($j==0) {$k='00';} else {$k=$j;}

		echo '<td>' . $i . ':' . $k . '</td>';

		$cells = count($officeWorkers);
		while($cells > 0) {
			echo '<td>' . $cells . '</td>';
			$cells--;
		}

		echo '</tr>';
	}
}

*/	


/* 
$officeWorkerList = array('Roy', 'Rob', 'Mich', 'Dan', 'Rich');

$officeWorkers = DataRecord::fetchRecords(sprintf('SELECT DISTINCT(ow1.name) AS leadName
	FROM lead AS l
	INNER JOIN office_worker AS ow1 ON ow1.id=l.repOfficeWorkerId
	WHERE ow1.name IN (%s)
	ORDER BY leadName ASC', implode(', ', $officeWorkerList)));
*/
?>

<!-- office selector -->
<tr>
	<select id="office" tabindex="1" name="office" onchange="form1.submit();">
		<?php
			foreach($offices as $office) {
				echo sprintf('<option value="%d">%s</option>', $office['id'], $office['name']);
			}
		?>
	</select>
</tr>

<!-- office worker selector -->
<tr>
	<select id="worker" tabindex="2" name="worker" onchange="form1.submit();">
		<?php
			foreach($officeWorkers as $officeWorker) {
				echo sprintf('<option value="%d">%s</option>', $officeWorker['id'], $officeWorker['leadName']);
			}
		?>
	</select>
</tr>

+=======================================================================================================================================================================
| RECURRING...
+=======================================================================================================================================================================

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: FIT RATES 
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Retrofit (<4kWp)', 0.1203, 0.0573, '2016-01-01 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build (<4kWp)', 0.1203, 0.0573, '2016-01-01 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<10kWp)', 0.1090, 0.0573, '2016-01-01 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<50kWp)', 0.1090, 0.0573, '2016-01-01 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<100kWp)', 0.0929, 0.0573, '2016-01-01 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<150kWp)', 0.0929, 0.0573, '2016-01-01 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<250kWp)', 0.0889, 0.0573, '2016-01-01 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<5MWp)', 0.0573, 0.0573, '2016-01-01 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Stand Alone', 0.0308, 0.0308, '2016-01-01 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Export Tariff', 0.0485, 0.0485, '2016-01-01 00:00:00', '2016-04-01 00:00:00');

INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Retrofit (<4kWp)', 0.0439, 0.0439, '2016-01-15 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build (<4kWp)', 0.0439, 0.0439, '2016-01-15 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<10kWp)', 0.0439, 0.0439, '2016-01-15 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<50kWp)', 0.0459, 0.0459, '2016-01-15 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<100kWp)', 0.0270, 0.0270, '2016-01-15 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<150kWp)', 0.0270, 0.0270, '2016-01-15 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<250kWp)', 0.0270, 0.0270, '2016-01-15 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<1000kWp)', 0.0227, 0.0227, '2016-01-15 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<5MWp)', 0.0087, 0.0087, '2016-01-15 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Stand Alone', 0.0087, 0.0087, '2016-01-15 00:00:00', '2016-04-01 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Export Tariff', 0.0485, 0.0485, '2016-01-15 00:00:00', '2016-04-01 00:00:00');

INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Retrofit (<4kWp)', 0.0432, 0.0432, '2016-04-01 00:00:00', '2016-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build (<4kWp)', 0.0432, 0.0432, '2016-04-01 00:00:00', '2016-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<10kWp)', 0.0432, 0.0432, '2016-04-01 00:00:00', '2016-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<50kWp)', 0.0453, 0.0453, '2016-04-01 00:00:00', '2016-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<100kWp)', 0.0264, 0.0264, '2016-04-01 00:00:00', '2016-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Ne Build & Retrofit (<150kWp)', 0.0264, 0.0264, '2016-04-01 00:00:00', '2016-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<250kWp)', 0.0264, 0.0264, '2016-04-01 00:00:00', '2016-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<1000kWp)', 0.0221, 0.0221, '2016-04-01 00:00:00', '2016-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<5MWp)', 0.0082, 0.0082, '2016-04-01 00:00:00', '2016-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Stand Alone', 0.0082, 0.0082, '2016-04-01 00:00:00', '2016-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Export Tariff', 0.0485, 0.0485, '2016-04-01 00:00:00', '2016-06-30 00:00:00');

INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Retrofit (<4kWp)', 0.0425, 0.0425, '2016-07-01 00:00:00', '2016-09-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build (<4kWp)', 0.0425, 0.0425, '2016-07-01 00:00:00', '2016-09-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<10kWp)', 0.0425, 0.0425, '2016-07-01 00:00:00', '2016-09-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<50kWp)', 0.0446, 0.0446, '2016-07-01 00:00:00', '2016-09-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<100kWp)', 0.0258, 0.0258, '2016-07-01 00:00:00', '2016-09-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<150kWp)', 0.0258, 0.0258, '2016-07-01 00:00:00', '2016-09-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<250kWp)', 0.0258, 0.0258, '2016-07-01 00:00:00', '2016-09-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<1000kWp)', 0.0215, 0.0215, '2016-07-01 00:00:00', '2016-09-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<5MWp)', 0.0076, 0.0076, '2016-07-01 00:00:00', '2016-09-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Stand Alone', 0.0076, 0.0076, '2016-07-01 00:00:00', '2016-09-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Export Tariff', 0.0485, 0.0485, '2016-07-01 00:00:00', '2016-09-30 00:00:00');

INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Retrofit (<4kWp)', 0.0425, 0.0425, '2017-01-01 00:00:00', '2017-03-31 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build (<4kWp)', 0.0425, 0.0425, '2017-01-01 00:00:00', '2017-03-31 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<10kWp)', 0.0411, 0.0411, '2017-01-01 00:00:00', '2017-03-31 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<50kWp)', 0.0432, 0.0432, '2017-01-01 00:00:00', '2017-03-31 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<100kWp)', 0.0199, 0.0199, '2017-01-01 00:00:00', '2017-03-31 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<150kWp)', 0.0199, 0.0199, '2017-01-01 00:00:00', '2017-03-31 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<250kWp)', 0.0199, 0.0199, '2017-01-01 00:00:00', '2017-03-31 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<1000kWp)', 0.0165, 0.0165, '2017-01-01 00:00:00', '2017-03-31 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<5MWp)', 0.0052, 0.0052, '2017-01-01 00:00:00', '2017-03-31 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Stand Alone', 0.047, 0.047, '2017-01-01 00:00:00', '2017-03-31 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Export Tariff', 0.0485, 0.0485, '2017-01-01 00:00:00', '2017-03-31 00:00:00');

INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Retrofit (<4kWp)', 0.0404, 0.0404, '2017-04-01 00:00:00', '2017-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build (<4kWp)', 0.0404, 0.0404, '2017-04-01 00:00:00', '2017-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<10kWp)', 0.0404, 0.0404, '2017-04-01 00:00:00', '2017-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<50kWp)', 0.0425, 0.0425, '2017-04-01 00:00:00', '2017-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<100kWp)', 0.0239, 0.0239, '2017-04-01 00:00:00', '2017-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<150kWp)', 0.0239, 0.0239, '2017-04-01 00:00:00', '2017-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<250kWp)', 0.0239, 0.0239, '2017-04-01 00:00:00', '2017-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<1000kWp)', 0.0197, 0.0197, '2017-04-01 00:00:00', '2017-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('New Build & Retrofit (<5MWp)', 0.0058, 0.0058, '2017-04-01 00:00:00', '2017-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Stand Alone', 0.0058, 0.0058, '2017-04-01 00:00:00', '2017-06-30 00:00:00');
INSERT INTO calculation_rate (`type`, rate, rateLower, startedOn, endedOn) VALUES ('Export Tariff', 0.0485, 0.0485, '2017-04-01 00:00:00', '2017-06-30 00:00:00');

?>
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC/ELEM/SP: PUBLIC HOLIDAYS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
INSERT INTO public_holiday (`date`) VALUES
('2016-01-01 00:00:00'),
('2016-03-25 00:00:00'),
('2016-03-28 00:00:00'),
('2016-05-02 00:00:00'),
('2016-05-30 00:00:00'),
('2016-08-29 00:00:00'),
('2016-12-26 00:00:00'),
('2016-12-27 00:00:00');

INSERT INTO public_holiday (Title, Holiday_Date) VALUES
('Bank / Public Holiday', '2016-01-01 00:00:00'),
('Bank / Public Holiday', '2016-03-25 00:00:00'),
('Bank / Public Holiday', '2016-03-28 00:00:00'),
('Bank / Public Holiday', '2016-05-02 00:00:00'),
('Bank / Public Holiday', '2016-05-30 00:00:00'),
('Bank / Public Holiday', '2016-08-29 00:00:00'),
('Bank / Public Holiday', '2016-12-26 00:00:00'),
('Bank / Public Holiday', '2016-12-27 00:00:00');

INSERT INTO address (Address_ID) VALUES (80674), (82781), (91118), (91144), (91248), (91274), (91306), (91465),
91495), (91512), (91512), (91708), (91708);


?>

+=======================================================================================================================================================================
| UPCOMING...
+=======================================================================================================================================================================

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| EDISON HOUSE GROUP INTRANET PROJECT
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- EHG: Complete git deployment http://www.edisonhousegroup.co.uk/Crons/DeployPull.php
- (cjec.co.uk)
- TABLE = domain: name, siteid (*4)
- TABLE = user_domain: id, userid, domainid, email, active, alias, password (*4)
- TABLE = user_system: id, userid, systemid, active, alias, password 
- TABLE = system: id, name (elements contracting)

+=======================================================================================================================================================================
| WORKED ON...
+=======================================================================================================================================================================

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEMENTS: FEEFO - REASSIGN EHT REVIEWS TO ACTUAL CHANNELS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT o.Order_ID, c.Name
FROM orders AS o
INNER JOIN channel AS c ON c.Channel_ID=o.Channel_ID
WHERE Order_ID IN (165169, 164820, 163961, 163961, 163961, 163961, 164193, 163184, 163184, 161230, 161230, 161230, 161230, 161230, 161230, 161230, 161230, 161230, 161351, 161124, 161124, 161124, 161124, 161124, 161124, 161124, 161124, 161124, 161124, 160778, 160778, 160778, 160778, 160778, 160778, 160778, 160778, 160778, 160778, 160778, 160727, 160727, 160727, 160727, 160727, 160727, 160727, 159104, 158587, 158054, 157842, 157842, 156996, 156996, 156996, 156996, 156996, 156996, 157013, 156520, 156205, 156205, 156205, 156205, 156205, 156205, 155852, 155225, 155225, 155225, 155225, 155225, 155137, 154380, 154622, 154478, 154295, 154554, 154423, 154519, 154599, 154599, 154407, 154419, 154344, 153222, 152697, 152697, 152697, 152697, 152697, 152697, 152631, 152782, 152654, 151819, 151491, 150081, 148548, 148548, 148548, 148548, 148548, 148548, 148895, 144472, 144472, 144472, 144472)
ORDER BY Name ASC;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CONTRACTING: FIRE APP JOB TIMESHEETS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

USE cjec;

DESC employee;

DESC employee_timesheet;

SELECT * FROM employee_timesheet WHERE EmployeeTimesheetID=630290;
SELECT * FROM employee WHERE Employee_ID=196;

SELECT * FROM employee WHERE Username LIKE '%thomas.mcdonnell24@googlemail.com%';

-- graham
SELECT * FROM employee_timesheet WHERE EmployeeID=196;
-- jack
SELECT * FROM employee_timesheet WHERE EmployeeID=191;
-- thomas
SELECT * FROM employee_timesheet WHERE EmployeeID=189;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CONTRACTING: VARIOUS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

http://www.cjelectrical.co.uk/admin/estimate_details.php?estimateid=17990 - fix 2.2 est print to show section totals
http://dev.cjec.co.uk/admin/purchase_details.php?purchaseid=91579 -- fixing net, tax and totals 
http://dev.cjec.co.uk/admin/purchase_details.php?purchaseid=91580 -- fixing net, tax and totals
http://dev.cjec.co.uk/admin/purchase_details.php?purchaseid=91581 -- fixing net, tax and totals
http://dev.cjec.co.uk/admin/purchase_details.php?purchaseid=91582 -- fixing net, tax and totals
http://dev.cjec.co.uk/admin/purchase_details.php?purchaseid=91586 -- fixing net, tax and totals
http://dev.cjec.co.uk/admin/purchase_details.php?purchaseid=90299 - credit note
http://dev.cjec.co.uk/admin/debit_details.php?debitid=2655/2656 -- deleted debit note for above (purchaseid=90299)
http://www.cjelectrical.co.uk/admin/purchase_details.php?purchaseid=90535 -- ac test
http://www.cjelectrical.co.uk/admin/purchase_details.php?purchaseid=90506 -- danielle not updateing totals on resolve
http://www.cjelectrical.co.uk/admin/purchase_details.php?purchaseid=90442 -- jackie invoice reference
http://dev.cjec.co.uk/admin/purchase_details.php?purchaseid=90520 -- batch from add line
http://www.cjelectrical.co.uk/admin/contact_letters.php?cid=4183 -- pdf generation
http://dev.cjec.co.uk/admin/purchase_details.php?purchaseid=90511 -- creates batch on 'resolve'
http://dev.cjec.co.uk/admin/contact_profile.php?cid=77514
http://dev.cjec.co.uk/admin/solar_warranty_details.php?id=5372
http://dev.cjec.co.uk/admin/heatings_pending.php
http://dev.cjec.co.uk/admin/contact_profile.php?action=view&cid=77800
http://dev.cjec.co.uk/admin/job_summary.php?action=ship&shipTo=16494
http://www.cjelectrical.co.uk/admin/estimate_detail_sections.php?estimateid=17119&sectionid=158914#section-158914
http://dev.cjec.co.uk/admin/estimate_detail_sections.php?estimateid=17100&sectionid=158661

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CONTRACTING: FIRE ASSET CACHE
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

http://www.cjelectrical.co.uk/Cache/Images/tom-mac-0x50.png
http://www.cjelectrical.co.uk/Cache/Images/tom-mac.png
http://www.cjelectrical.co.uk/Cache/Images/jack-green-0x50.png
http://www.cjelectrical.co.uk/Cache/Images/jack-green.png
http://www.cjelectrical.co.uk/Cache/Images/darryl-giddens-1-0x50.png
http://www.cjelectrical.co.uk/Cache/Images/darryl-giddens-1.png
http://www.cjelectrical.co.uk/Cache/Images/graham-stevens-1-0x50.png
http://www.cjelectrical.co.uk/Cache/Images/graham-stevens-1.png
http://www.cjelectrical.co.uk/Cache/Images/eastern-fire-logo.png

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CONTRACTING: FIRE JOBTYPE
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

USE cjec;

DESC job;

SELECT j.Custom_Reference, jobType, j.* FROM job j WHERE Channel_ID IN (6,10);

SELECT DISTINCT(Custom_Reference), jobType FROM job WHERE Channel_ID IN (6,10) ORDER BY Custom_Reference;

UPDATE job SET jobType = 'Servicing' WHERE Custom_Reference = 'Servicing' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Servicing' WHERE Custom_Reference LIKE '%servicing%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Servicing' WHERE Custom_Reference LIKE '%servicng-%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Servicing' WHERE Custom_Reference LIKE '%servcing%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Servicing' WHERE Custom_Reference LIKE '%aov%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Servicing' WHERE Custom_Reference LIKE '%fire%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Servicing' WHERE Custom_Reference LIKE '%repair%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Servicing' WHERE Custom_Reference LIKE '%fault%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Servicing' WHERE Custom_Reference LIKE '%service visit%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Servicing' WHERE Custom_Reference LIKE '%smoke%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Quoted Works' WHERE Custom_Reference LIKE '%quoted works%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Remedials' WHERE Custom_Reference LIKE '%remedials%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Remedials' WHERE Custom_Reference LIKE '%remedial%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Call Out' WHERE Custom_Reference LIKE '%call out%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Call Out' WHERE Custom_Reference LIKE '%call-out%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Call Out' WHERE Custom_Reference LIKE '%callout%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Call Out' WHERE Custom_Reference LIKE '%out of hours%' AND Channel_ID IN (6,10);
UPDATE job SET jobType = 'Call Out' WHERE Custom_Reference LIKE '%out-of-hours%' AND Channel_ID IN (6,10);

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CONTRACTING: JAMES BOON
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM users WHERE User_ID=11; -- James Boon / Contact ID was 0 now 20750
http://www.cjelectrical.co.uk/admin/contact_profile.php?action=updateind&cid=20750

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CONTRACTING: STRIP 0@no-email.co.uk FROM SYSTEM
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT Email, p.* FROM person p ORDER BY Email ASC;

SELECT * FROM person WHERE Email = '0@no-email.co.uk';
SELECT * FROM person WHERE Email = 'no@no-email.co.uk';
SELECT * FROM person WHERE Email = 'no@email.co.uk';

SELECT * FROM customer WHERE Username = '0@no-email.co.uk';
SELECT * FROM customer WHERE Username LIKE '%@no-email.co.uk';

UPDATE person SET Email = '' WHERE Email = '0@no-email.co.uk';
UPDATE person SET Email = '' WHERE Email = 'no@no-email.co.uk';
UPDATE person SET Email = '' WHERE Email = 'no@email.co.uk';

UPDATE customer SET Username = '' WHERE Username = '0@no-email.co.uk';

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CONTRACTING: VARIOUS FIXES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

David Friend: SELECT * FROM template WHERE TemplateID=78; -- job sheet
John Ely: https://www.cjelectrical.co.uk/admin/enquiry_details.php?enquiryid=10764
Steve Daley: http://dev.cjec.co.uk/admin/report_invoices.php?action=report&start=2016-04-01&end=2016-04-29&range=&contractmanager=9&channel=&officeId=&profitcentre=0
Adam Dorward: http://dev.cjec.co.uk/admin/lighting_details.php?id=73
Lee Clay: http://dev.cjec.co.uk/admin/organisation_jobs.php?ocid=66517
AD: SELECT * FROM job WHERE Index_Number=35751; -- 67062 SELECT * FROM job WHERE Index_Number=34554; -- 64815 SELECT * FROM purchase WHERE Job_ID=64815; SELECT * FROM purchase WHERE Job_ID=67062;
Jamie: Job 37339 - Job Print Summary to print on one page

Danielle: Set EHT POs to not exempt
SELECT * FROM purchase WHERE Purchase_ID=92439; -- was tax exempt now not
SELECT * FROM purchase WHERE Purchase_ID=92373; -- was tax exempt now not
SELECT * FROM purchase WHERE Purchase_ID=91208; -- was tax exempt now not
SELECT * FROM purchase WHERE Purchase_ID=92653; -- was tax exempt now not
SELECT * FROM purchase WHERE Purchase_ID=92615; -- was tax exempt now not
SELECT * FROM purchase WHERE Purchase_ID=92363; -- was tax exempt now not
SELECT * FROM purchase WHERE Purchase_ID=92364; -- was tax exempt now not
SELECT * FROM purchase WHERE Purchase_ID=92352; -- was tax exempt now not


+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| EPPH: DATA SET FINALISED IN ERROR
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

UPDATE estimate SET Status = 'Finalised' WHERE Status='Pending' AND Created_On <= '2016-04-30 00:00:00';

// Reverse above (20160811-1427-estimates-pending.csv)

SELECT * FROM estimate WHERE Estimate_ID IN (
16346, 16343, 16337, 16336, 16335, 16334, 16332, 16331, 16324, 16322, 16320, 16317, 16308, 16306, 16305, 16304, 16300, 16298, 16297,
16291, 16289, 16288, 16287, 16286, 16285, 16283, 16280, 16278, 16275, 16272, 16267, 16265, 16262, 16261);

UPDATE estimate SET Status = 'Pending' WHERE Estimate_ID IN (
16346, 16343, 16337, 16336, 16335, 16334, 16332, 16331, 16324, 16322, 16320, 16317, 16308, 16306, 16305, 16304, 16300, 16298, 16297,
16291, 16289, 16288, 16287, 16286, 16285, 16283, 16280, 16278, 16275, 16272, 16267, 16265, 16262, 16261);


+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CONTRACTING: SIMON - NEGATIVE COSTS ON JOB ESTIMATE VARIATION
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

http://www.cjelectrical.co.uk/admin/job_details.php?jobid=63843
http://dev.cjec.co.uk/admin/estimate_detail_sections.php?estimateid=17013
http://dev.cjec.co.uk/admin/estimate_detail_sections.php?estimateid=17013&sectionid=158002#section-158002
http://dev.cjec.co.uk/admin/cost_details.php?jobid=63843

-- -11000.0000
SELECT * FROM estimate WHERE Estimate_ID=16051;
SELECT * FROM estimate WHERE Estimate_ID=16920;
SELECT * FROM estimate WHERE Estimate_ID=16999;
SELECT * FROM estimate WHERE Estimate_ID=17013; 
SELECT * FROM estimate_section WHERE Estimate_ID=17013;
SELECT * FROM estimate_task WHERE Estimate_Task_ID=443313;
SELECT * FROM job_task WHERE Job_Task_ID=89909;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CONTRACTING: PRINT TEMPLATES ADJUSTED TO SHOW ADDRESS THROUGH ENVELOPE WINDOW
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
 
http://dev.cjec.co.uk/admin/job_analytics.php?analyticid=66148
-- updated cjec_contracting\resources\common\templates\print\components\job_invoice_quotation.tpl with <p style="margin-top: 100px;"></p>
-- updated cjec_contracting\resources\common\templates\print\components\job_invoice.tpl with <p style="margin-top: 100px;"></p>

SELECT * FROM template WHERE Reference LIKE '%print%'; -- only update those with address as first lines
-- Updated 78, 228, 229, 230, 231, 200, 202, 210, 224, 194, 129, 127, 87, 85, 83, 76 with <p style="margin-top: 100px;"></p> 

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CONTRACTING: LIGHTING CALCULATION
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

http://dev.cjec.co.uk/admin/job_analytics.php?analyticid=64324

- Test items are replicated as tasks when converting calculation to job

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: KEYWORD POPULARITY REPORT
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- http://dev.elementshop.co.uk/admin/report_keyword_popularity.php

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: FIRE SECURITY + EASTERN FIRE LTD
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

USE cjec;

DESC job; -- siteAddressId references Customer_Contact_ID.customer_contact
DESC contact;
DESC customer_contact;
DESC customer;
DESC address;
DESC device;
DESC customer_contact_device;

USE cjec;

DESC job;
DESC job_device;
DESC customer_contact_device;
DESC device;
DESC job_device_certificate;

SELECT * FROM job_device;
SELECT * FROM customer_contact_device; --
SELECT * FROM device;
SELECT * FROM job_device_certificate;
SELECT * FROM device_certificate;

http://dev.cjec.co.uk/admin/customer_contact_profile.php?contact=540
http://dev.cjec.co.uk/admin/contact_profile.php?cid=2851

http://dev.cjec.co.uk/admin/job_details.php?jobid=64236
http://dev.cjec.co.uk/admin/job_details.php?jobid=64247

http://dev.cjec.co.uk/admin/device_certificates.php
http://dev.cjec.co.uk/admin/devices.php

http://www.cjelectrical.co.uk/admin/job_details.php?jobid=64236 -- analytic
http://dev.cjec.co.uk/admin/job_print_invoice.php?jobid=64353&invoice=1 -- analytic

----TODO
[-] Import EASTERN FIRE CUST SERVICE DATABASE A-Z.xls
-- http://dev.cjec.co.uk/scripts/Import/EasternFire.php
[-] admin/users.php - associate users to contacts - copy elements creation of contact when new user

-----PENDING
[-] Job Details: Invoice Template override for Eastern channel only -- CHANNEL IMAGE IS HARD CODED UNTIL FULL OWNERSHIP OF DOMAIN
[-] Create Eastern Fire LTD PDF backdrop and letterheads -- NEED OWNERSHIP OF DOMAIN

-----DONE
[*] Create Job: Create site address from Primary Address --- customer_contact.php?action=add -- import primary address
[*] Job Details: Link/Folder ->Customer Site Address
[*] Job Details + Site Address Profile: Link to printable list of assets (without buttons/furniture, etc)
[*] Job Details: Certificate: Show employee signature	
[*] Job Details: Certificate: Add Certificate of Commisioning
[*] Job Details: Certificates partial (certificates are cached in new DB table: certificates id, certType, employeeId, createdOn, createdBy)
[*] Job Details: Certificate: Certificate Title
[*] Job Details: Certificate: Edit PDF to change address to Edison
[*] Job Details: Certificate: Add Lighting Protection cert
[*] Job Details: Asset Register: Scrolls
[*] Job Details: Asset Register: Add Asset button (send jobid as return to job profile)
[*] Job Details: If siteAddressId, show Asset Register partial
[*] Site Address Profile: Add Job button to Tools
[*] Site Address Profile: Asset Register: Add ID column
[*] Site Address Profile: Asset Register: Add CreatedOn dates
[*] Site Address Profile: Asset Register: Add Location column
[*] Site Address Profile: Asset Register: Replace Name with Item
[*] Site Address Profile: Asset Register: Item is select box from new support table containing item types
[*] Site Address Profile: Asset Matrix: Replace icons with text
[*] Site Address Profile: Asset Matrix: Add Visit No above job completed on date
[*] Site Address Profile: Related Jobs: Replace Created On with Completed On Date
[*] Site Address Profile: Edit Asset: Add Deactived Reason Textbox; Deactived Date
---
[*] Add channel in schedule tasks
[*] Add Eastern Fire LTD as new channel under department 2
---
[*] View and manage site address in customer profile
[*] Add siteAddressId to job (references customer_contact)
[*] List site addresses in customer profile as partial below contacts partial
[*] When open site address profile, show customer_contact_devices partial
[*] Device management in devices partial in customer_contact_profile
[*] Create new table: customer_contact_devices (id, name, active, * 4)
[*] Create new table: job_device (id, deviceId, status, * 4)
[*] When create job, store siteAddressId in job
[*] Store/cache siteAddressId in $cart for eventual job->GenerateFromCart
[*] When create job, get customer_contact_devices for the chosen site address:
[*] In job->GenerateFromCart, foreach contact_devices, insert into job_device
[*] In job profile, list and manage all job_device with status pull down (tested, faulty, replacement) 
[*] Tools > Add Asset to replace button in Devices Partial
[*] Create matrix of devices against job_device showing status (tested: green; red: faulty; replacement: black)

--- DLO
[-] When create job, store siteAddressId in job
[-] When create job, get job_assets for the chosen site address
[-] Manage status of job_asset in job partial [get 4 status from James Fire/Security]
[-] create new table: job_asset (id, assetId, status (Faulty, etc, ask James), * 4)
[-] create new table: assets (id, name, active, * 4)
[/] job_device fk to device, device contains active flag -- there is no central store of devices

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: CERTIFIED SHOPS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

# FAKE ORDERS (INDIVIDUALS; 2 PER DAY)
- register contact (01473 276688, IP3 9GU)
- SELECT * FROM person ORDER BY Person_ID DESC LIMIT 10;
- SELECT * FROM contact WHERE Person_ID=1028957;
- give contact credit account
- complete order
- "no thanks" google
- delete order

# ORDERS CREATED + DELETED
- 20151026 09:37
- 178.62.72.225
- Russell Smith
- russellsmith@fastmail.com
- order: 144005

- 20151026 14:19
- 178.62.54.159
- Kirsty Cooper
- kirstycooper83@yahoo.com
- order: 144064

- 20151109 16:39
- 213.229.101.116
- Elliot Coyne
- elliotcoyne@btopenworld.com
- order no: 145079

- 20151110 15:38
- 192.121.113.65
- Susan Tooke
- susietooke@hotmail.com
- order no: 145167

- 20151110 15:46
- 178.62.85.58
- Richard Delahunt
- rjdelahunt@virgin.net
- order no: 145168

- 20151111 12:04
- 178.62.99.91
- Charlotte Roche
- charlotteroche@yahoo.co.uk
- order no: 145238

- 20151111 16:19
- 178.62.112.37
- Steve Gray
- stgray@virgin.net
- order no: 145282

- 20151112 13:06
- 178.62.48.76
- Alan Sterne
- alansterne@hotmail.com
- order no: 145353

- 20151112 16:41
- 178.62.99.91
- Sophie Warner
- sophiewarner@btopenworld.com
- order no: 145387

- 20151113 11:35
- 85.234.158.178
- Donovan Miles
- donovanhmiles@btinternet.com
- order no: 145434

- 20151113 12:53
- 213.229.101.118
- Andrew Wallace
- andrewwallace@yahoo.com
- order no: 145450

- 20151117 13:15
- 178.62.122.173
- John Darby
- johnbdarby@virgin.net
- order no: 154un726

- 20151117 13:21
- 178.62.80.161
- Greta Autenberg
- gretaauthenberg@yahoo.com
- order no: 145729

- 20151118 16:10
- 178.62.121.144
- Frank Wilce
- frankwilce@hotmail.com
- order no: 145883

- 20151118 16:19
- 178.62.110.68
- Adrian Hayward
- adehayward@btinternet.com
- order no: 145888

- 20151123 13:15
- 192.121.113.42
- Douglas Wiltshire
- douglaswiltshire@yahoo.com
- order no: 146271

- 20151123 14:05
- 178.62.55.21
- Robert Soloman
- robsoloman@btopenworld.com
- order no: 146280

- 20151126 16:26
- 178.62.99.91
- Mike Livingstone
- mikelivingstone@btinternet.com
- order no: 146761

- 20151126 16:36
- 178.62.124.32
- Daniel Blackmore
- danielblackmore@virgin.net
- order no: 146766

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: REMOVE CHECKLIST SECTION FROM DOWNLOAD RAMS TEMPLATE 
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

USE cjec;
SELECT * FROM template;
SELECT * FROM template WHERE TemplateID=219;

Backup: 20151207-pdf_job_sheet.html

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: EXTRACT: Veria Sales (Last 12 Months)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT p.Product_ID AS Quick_Find, p.Product_Title, SUM(ol.Quantity) AS Quantity, DATE_FORMAT(ol.Created_On, '%Y %m') AS Month
FROM product AS p
INNER JOIN supplier_product AS sp ON sp.Product_ID=p.Product_ID AND sp.Supplier_ID=35

LEFT JOIN (
  SELECT ol.Product_ID, SUM(ol.Quantity) AS Quantity, ol.Created_On, ol.Despatch_ID
  FROM (
    SELECT ol.Product_ID, SUM(ol.Quantity) AS Quantity, o.Created_On, ol.Despatch_ID
    FROM order_line AS ol
    INNER JOIN orders AS o ON o.Order_ID=ol.Order_ID
    WHERE ol.Despatch_ID > 0 AND ol.Parent_ID=0
    GROUP BY ol.Product_ID, o.Created_On

    UNION ALL

    SELECT ol2.Product_ID, SUM(ol.Quantity*ol2.Quantity) AS Quantity, o.Created_On, ol.Despatch_ID
    FROM order_line AS ol
    INNER JOIN orders AS o ON o.Order_ID=ol.Order_ID
    INNER JOIN order_line AS ol2 ON ol2.Parent_ID=ol.Order_Line_ID
    WHERE ol2.Despatch_ID > 0
    GROUP BY ol2.Product_ID, o.Created_On
  ) AS ol

  GROUP BY ol.Product_ID, ol.Created_On

) AS ol ON ol.Product_ID=p.Product_ID

WHERE ol.Created_On > ADDDATE(NOW(), INTERVAL -12 MONTH)
GROUP BY ol.Product_ID, Month
ORDER BY ol.Product_ID, Month DESC;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: ORDER TRACKER
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: SAGE DAILY BATCHES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: FAQ MANAGEMENT PAGE 
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

http://dev.elementshop.co.uk/admin/product_categories.php
http://dev.elementshop.co.uk/admin/product_category_faqs.php?id=2034
http://dev.elementshop.co.uk/admin/product_category_faqs.php?id=2038

DESC faq;
DESC product_faq;
DESC product_category_faq;

SELECT * FROM faq;
SELECT * FROM product_faq;
SELECT * FROM product_category_faq;

Associate FAQs with product and categories
- Checkboxes to associate
- Select faq by channel
- Get faqs associated with parent category
- Support tables: faq_product; faq_product_category

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: SCRIPT TO DISPLAY DOMAIN DETAILS (DNS ETC) RATHER THAN HAVING TO GO TO RACKSPACE
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- http://php.net/manual/en/function.dns-get-record.php

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: SET ESTIMATE TO PENDING 20150630 (SIMON DAYNES)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

 15.02 SELECT * FROM estimate WHERE Index_Number=8094;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: UPDATE IKANO SAT NOTE WITH NEW FIT RATES (db.cjec.calculation_rate)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

https://www.cjelectrical.co.uk/admin/job_details.php?jobid=61173

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: CALCULATIONS/JOB REFERRAL COMMISSIONS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Update job object/class with new flags referralCommissionApplicable, referralCommissionPaid
- Migrate commission flag data from calc to job using customer id
----------------------------------------------------------------------------------------------
- Remove calc number (and referral date?) from report
- Lock Dave out of report by setting IF user id = me
- Tidy: Delete commission flags from calc db + obj/class

http://dev.cjec.co.uk/admin/report_referrals.php?start=01/08/2009&end=18/03/2015&status=

SELECT j.Job_ID, c.id, c.isCommissionApplicable, c.isCommissionPaid, c.createdOn FROM job AS j
INNER JOIN calculation AS c ON c.id=j.Calculation_ID
AND c.isCommissionApplicable='Y'
AND c.isCommissionPaid='Y'
ORDER BY c.createdOn ASC;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: INTEGRATE FEEFO REVIEWS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

https://www.heatershop.co.uk/rointe-kyros-kri0330rad2-330w-electric-radiator-360mm-3-elements?cat=2059

USE elements;
DESC review;
DESC review_product;
SELECT * FROM review;
SELECT * FROM review_product;

<?php 
// average rating using subquery
$reviewRecords = DataRecord::fetchRecords(sprintf('SELECT rp.ratingProduct, rp.comment, r.commentService, r.responseService, r.reviewedOn, r.integrationUrl, c.averageRating
	FROM review_product AS rp
	INNER JOIN review AS r ON r.id=rp.reviewId
	INNER JOIN (SELECT ROUND(SUM(rp2.ratingProduct)/COUNT(*), 1) AS averageRating
	FROM review_product AS rp2
		INNER JOIN review AS r2 ON r2.id=rp2.reviewId
		WHERE rp2.productId=%1$d AND rp2.ratingProduct IS NOT NULL AND (r2.channelId IS NULL OR r2.channelId=%2$d)
	) AS c
	WHERE rp.productId=%1$d AND rp.ratingProduct IS NOT NULL AND (r.channelId IS NULL OR r.channelId=%2$d)
	ORDER BY r.reviewedOn DESC', $product->ID, Application::$channel->ID));
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: CALCULATION
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- SELECT * FROM calculation WHERE indexNumber=4792;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: AVAILABLE STOCK (FOR RETAILER VIA API SCRIPT)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
require_once('../../Header.php');
import('System/Library/Csv/Writer.php');

// TODO: Generalise to accept warehouseId and classificationId as arguments
$classificationId = 4; // Solar Photovoltaic

$records = DataRecord::fetchRecords(sprintf('SELECT p.Product_ID, p.Product_Title, p.SKU, p.Discontinued, GREATEST(COALESCE(SUM(ws.Quantity_In_Stock), 0) - COALESCE(a.Allocated_Stock, 0), 0) AS Quantity_In_Stock
	FROM product AS p
	LEFT JOIN warehouse_stock AS ws ON ws.Product_ID=p.Product_ID
	LEFT JOIN (

		SELECT u.Product_ID, SUM(u.Quantity) AS Allocated_Stock
		FROM (

			SELECT ol.Product_ID, SUM(ol.Quantity) AS Quantity
			FROM order_line AS ol
			INNER JOIN warehouse AS w ON w.Warehouse_ID=ol.Despatch_From_ID AND w.stockAvailable=TRUE AND w.Type=\'B\'
			INNER JOIN orders AS o ON o.Order_ID=ol.Order_ID AND o.Status IN (\'Reviewing\', \'Pending\', \'Awaiting Packing\', \'Packing\', \'Awaiting Despatch\', \'Partially Despatched\') AND o.OwnedBy=0
			WHERE ol.Despatch_ID=0 AND ol.Parent_ID=0
			GROUP BY ol.Product_ID

			UNION ALL

			SELECT ol2.Product_ID, SUM(ol.Quantity*ol2.Quantity) AS Quantity
			FROM order_line AS ol
			INNER JOIN warehouse AS w ON w.Warehouse_ID=ol.Despatch_From_ID AND w.stockAvailable=TRUE AND w.Type=\'B\'
			INNER JOIN orders AS o ON o.Order_ID=ol.Order_ID AND o.Status IN (\'Reviewing\', \'Pending\', \'Awaiting Packing\', \'Packing\', \'Awaiting Despatch\', \'Partially Despatched\') AND o.OwnedBy=0
			INNER JOIN order_line AS ol2 ON ol2.Parent_ID=ol.Order_Line_ID
			WHERE ol.Despatch_ID=0
			GROUP BY ol2.Product_ID

		) AS u
		GROUP BY u.Product_ID

	) AS a ON a.Product_ID=p.Product_ID
	WHERE p.Classification_ID=%1$d
	GROUP BY p.Product_ID
	HAVING Discontinued=\'N\' OR Quantity_In_Stock>0
	ORDER BY p.Product_Title', $classificationId));

$csv = new CsvWriter();
$csv->addHeader('Quick Find');
$csv->addHeader('Product Title');
$csv->addHeader('SKU');
$csv->addHeader('Stock Qty');

foreach($records as $row) {
	$csvRow = array();
	$csvRow[] = $row['Product_ID'];
	$csvRow[] = $row['Product_Title'];
	$csvRow[] = $row['SKU'];
	$csvRow[] = $row['Quantity_In_Stock'];

	$csv->addRow($csvRow);
}

$csv->compile();

echo $csv->getData();
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: EXTRACT: EMAT SALES (LAST 12 MONTHS)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Having to union because some emat product packs contain more than one emat, thus we need to multiply the parent qty by the child qty
SELECT u.DatePeriod AS Month, u.Product_ID, u.Product_SKU, u.Product_Title, SUM(u.Quantity) AS 'Quantity'

FROM (
  SELECT DATE_FORMAT(ol.Created_On, '%Y-%m') AS DatePeriod,
  ol.Product_ID, ol.Product_Title, ol.Product_SKU, SUM(ol.Quantity) AS Quantity
  FROM order_line AS ol
  INNER JOIN orders AS o ON o.Order_ID=ol.Order_ID AND o.Status NOT IN('Incomplete','Unauthenticated','Cancelled')
  WHERE ol.Parent_ID=0 AND ol.Product_Title LIKE '%emat%' AND ol.Created_On>ADDDATE(DATE_FORMAT(NOW(), '%Y-%m-01'), INTERVAL -12 MONTH)
  GROUP BY DatePeriod, ol.Product_ID

UNION ALL

  SELECT DATE_FORMAT(ol2.Created_On, '%Y-%m') AS DatePeriod,
  ol2.Product_ID, ol2.Product_Title, ol2.Product_SKU, SUM(ol.Quantity*ol2.Quantity) AS Quantity
  FROM order_line AS ol
  INNER JOIN order_line AS ol2 ON ol2.Order_Line_ID=ol.Parent_ID
  INNER JOIN orders AS o ON o.Order_ID=ol2.Order_ID AND o.Status NOT IN('Incomplete','Unauthenticated','Cancelled')
  WHERE ol2.Product_Title LIKE '%emat%' AND ol2.Created_On>ADDDATE(DATE_FORMAT(NOW(), '%Y-%m-01'), INTERVAL -12 MONTH)
  GROUP BY DatePeriod, ol2.Product_ID

) AS u

GROUP BY Month, Product_ID
ORDER BY Month DESC, Product_Title;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: EXTRACT: SALES (5% CASH BACK JUNE STS CONTACTS)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT co.Contact_ID, og.Org_Name AS 'Organisation', CONCAT_WS(' ', p.Name_First, p.Name_Last) AS Name,
o.Order_ID, o.Total, o.Created_On AS 'Created On',
CONCAT_WS(' ', p2.Name_First, p2.Name_Last) AS 'Created By'
FROM customer AS cu
INNER JOIN orders AS o ON o.Customer_ID=cu.Customer_ID
LEFT JOIN contact AS co ON co.Contact_Id=cu.Contact_ID
LEFT JOIN person AS p ON p.Person_ID=co.Person_ID
LEFT JOIN users u ON u.User_ID=o.Created_By
LEFT JOIN person p2 ON p2.Person_ID=u.Person_ID
LEFT JOIN contact AS co2 ON co2.Contact_ID=co.Parent_Contact_ID
LEFT JOIN organisation AS og ON og.Org_ID=co2.Org_ID
WHERE co.Contact_ID IN(SELECT Contact_ID FROM contact_group_assoc WHERE Contact_Group_ID=353)
ORDER BY o.Created_On DESC;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: WEEKEND PROMOTION USING PRODUCT OFFERS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Duplicating previous product_offers...

INSERT INTO product_offers
(Product_ID, Channel_ID, Price_Offer, Offer_Start_On, Offer_End_On, Created_On, Created_By,
Modified_On, Modified_By) (SELECT Product_ID, Channel_ID, Price_Offer, '2015-06-12 17:00:00', '2015-06-15 07:00:00',
'2015-06-12 11:40:00', 95, '2015-06-12 11:40:00', 95 FROM product_offers
WHERE Offer_Start_On='2015-05-29 17:00:00');

INSERT INTO product_offers
(Product_ID, Channel_ID, Price_Offer, Offer_Start_On, Offer_End_On, Created_On, Created_By,
Modified_On, Modified_By) (SELECT Product_ID, Channel_ID, Price_Offer, '2015-07-17 17:00:00', '2015-07-20 10:00:00',
'2015-07-17 08:20:00', 95, '2015-07-17 08:20:00', 95 FROM product_offers
WHERE Offer_Start_On='2015-07-03 17:00:00');

-- Report product_offers...
SELECT po.Product_ID, p.Product_Title, po.Price_Offer, po.Created_On, po.Created_By
FROM product_offers AS po
INNER JOIN product AS p ON p.Product_ID=po.Product_ID
WHERE po.Created_By=12 AND po.Created_On > '2015-05-22 00:00:00'
ORDER BY po.Product_Offer_ID DESC;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: APPLY BANNER MANAGEMENT TO CJEC CHANNELS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php

// Check with AP okay to replace current unused sequencer code with code from elements system (see old code commented out in admin/lib/classes/Sequencer.php)

	$banners = DataRecord::fetchRecords(sprintf('SELECT bn.title, bn.link, bn.assetNameId
		FROM banner AS bn
		WHERE bn.channelId=%1$d 
		ORDER BY bn.sequence ASC', Application::$channel->ID));

	if(count($banners) > 0) {
		foreach($banners as $banner) {
			if($banner['assetNameId'] > 0) {
				$assetName = new AssetNameDataObject();
				$assetName->setId($banner['assetNameId']);
				$assetName->select();
				?>

				<div class="bannerSlideItem">
					<a href="<?php echo $banner['link']; ?>" title="<?php echo $banner['title']; ?>">
						<img u="image" src="<?php echo ImageCommon::getCached(ImageCommon::injectDimensions($assetName->getValue('name'), 960, 300)); ?>" alt="<?php echo $banner['title']; ?>" />
					</a>
				</div>

			<?php
			}
		}
	}
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: SEARCH QUERY TRACKING
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- System for recording search entries in our search engine, with date/time and products matching criteria
- track search queries and returned products (limit to 5) so that we can populate search with popular results for that query

-- Capture results in Common\Search.php...
--- Testing:  http://dev.elementshop.co.uk [AJAX-powered search field] -- character by character search query captured
--- Testing: http://dev.elementshop.co.uk/search -- full search query is captured
--- splice the return value to return only 5
--- show more at end of AJAX results
--- add quickflag BOOL depending on where search is coming from i.e., AJAX search

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: JQUERY MEDIA PLAYER 
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

// Test Case: http://dev.elementshop.co.uk/admin/contact_profile.php?cid=1345589
-- .gsm -- find jquery player
-- http://malsup.com/jquery/media/

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: SEARCH TRACKING EXTRACT
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT c.Name AS Channel, IF(sq.quicksearch, 'Y', 'N') AS Quick_Search, sq.`query` AS Search_Query, COUNT(DISTINCT sq.id) AS Frequency, ROUND(COUNT(sqp.id) / COUNT(DISTINCT sq.id),1) AS Average_Products
FROM search_query AS sq
INNER JOIN channel AS c ON c.Channel_ID=sq.channelId
LEFT JOIN search_query_product AS sqp ON sqp.searchQueryId=sq.id
WHERE sq.createdOn BETWEEN [START] AND [END]
GROUP BY sq.`query`, sq.quicksearch, sq.channelId
ORDER BY c.Name ASC, Quick_Search DESC, Frequency DESC;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: MOBILE VERSION OF BANNER
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Apply and test current banner system...
- Create mobile version of banner images...
-- http://dev.elementshop.co.uk/?layout=phone

For slide size, it inherits from 'slides container' by default unless '$SlideWidth/$SlideHeight' option is explicitly specified. See Reference - Options.
http://www.jssor.com/development/tip-arrange-layout-adjust-size.html
http://www.jssor.com/development/reference-options.html

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: DROP SHIP
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

New "drop ship" partial in product profile for ticking/crossing drop ship flag and selecting a supplier from the drop ship list. Updateable through a process_ partial.

The idea being, certain products we will not stock, so rather than being "out of stock," I need a flag to identify that we supply these back-to-back from our supplier.

- dropShip flag to say that we do drop ship back-to-back orders. (false by default)
- dropShipSupplierId (nullable) to say, if we drop ship, who is the primary supplier by default.

Can you show Jake how the process works with setting up the *DB*, *the object*, *class*, and the *UI*

Thanks

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: BANNER MANAGEMENT SYSTEM
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<!-- new system applied -->

<div class="banner">
	<div class="bannerSizing" id="Slider">
		<div u="slides" class="bannerSlide">

			<?php

			$banners = DataRecord::fetchRecords(sprintf('SELECT bn.title, bn.link, bn.assetNameId
				FROM banner AS bn
				WHERE bn.channelId=%1$d 
				ORDER BY bn.sequence ASC', Application::$channel->ID));

			if(count($banners) > 0) {
				foreach($banners as $banner) {
					if($banner['assetNameId'] > 0) {
						$assetName = new AssetNameDataObject();
						$assetName->setId($banner['assetNameId']);
						$assetName->select();
						?>

						<div class="bannerSlideItem">
							<a href="<?php echo $banner['link']; ?>" title="<?php echo $banner['title']; ?>">
								<img u="image" src="<?php echo ImageCommon::getCached(ImageCommon::injectDimensions($assetName->getValue('name'), 772, 329)); ?>" alt="<?php echo $banner['title']; ?>" />
							</a>
						</div>

					<?php	
					}
				}
			}
			?>
		</div>

		<div class="bannerArrow bannerArrowLeft">
			<div u="arrowleft"></div>
		</div>

		<div class="bannerArrow bannerArrowRight">
			<div u="arrowright"></div>
		</div>

		<div u="navigator" class="bannerNavigation">
			<div u="prototype"></div>
		</div>
	</div>
</div>


<!-- old HTML -->

<div class="bannerSlideItem">
	<a href="rointe-promo" title="Free Rointe Kyros Remote">
		<img u="image" src="/resources/channels/<?php echo Application::$channel->Reference; ?>/images/banners/free-remote.jpg" alt="Free Rointe Kyros Remote" />
	</a>
</div>
<div class="bannerSlideItem">
	<a href="<?php echo ProductCategoryCommon::getUrl(2059); ?>" title="Rointe Kyros Radiators">
		<img u="image" src="/resources/channels/<?php echo Application::$channel->Reference; ?>/images/banners/kyros.jpg" alt="Rointe Kyros Radiators" />
	</a>
</div>
<div class="bannerSlideItem">
	<a href="<?php echo ProductCategoryCommon::getUrl(2048); ?>" title="Elnur RFE Radiators">
		<img u="image" src="/resources/channels/<?php echo Application::$channel->Reference; ?>/images/banners/elnur.jpg" alt="Elnur RFE Radiators" />
	</a>
</div>
<div class="bannerSlideItem">
	<a href="pricebeat" title="Best Price Guarantee">
		<img u="image" src="/resources/channels/<?php echo Application::$channel->Reference; ?>/images/banners/best-price.jpg" alt="Best Price Guarantee" />
	</a>
</div>


+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: MODIFY APPAREL AND INTEGRATE UNIFORMS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

USE cjec;

DESC work_task_employee;
DESC work_task;
DESC work_task_schedule;
DESC work_task_schedule_checklist;
DESC work_task_checklist;

SELECT * FROM  work_task_employee; -- DELETED TEST 707
SELECT * FROM  work_task; -- id 4 = Monthly checks
SELECT * FROM  work_task_schedule; -- DELETED TEST 2012
SELECT * FROM  work_task_schedule_checklist; -- DELETED TEST 2012
SELECT * FROM  work_task_checklist; -- OK

DESC apparel;
DESC apparel_batch;
DESC apparel_batch_item;

SELECT * FROM apparel WHERE productCode='UNIFORM'; -- 27, 28, 29, 30, 31; 168866, 168881, 168882, 168883, 168884
SELECT * FROM apparel_batch; -- createdBy (employeeId)
SELECT * FROM apparel_batch_item; -- createdBy (employeeId)

// Employee Uniform
- Apparel DB: Part code: UNIFORM
- Link to request apparel at end of work task report 
- Quantity: Select: 1, 2, 3, 4, 5
- Size: Text field 

-- BAK (BEFORE DROPPING TABLES)
DROP TABLE IF EXISTS `cjec`.`apparel_size`;
CREATE TABLE  `cjec`.`apparel_size` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `apparelId` int(10) unsigned NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `apparelId` (`apparelId`),
  CONSTRAINT `apparel_size_ibfk_1` FOREIGN KEY (`apparelId`) REFERENCES `apparel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cjec`.`apparel_colour`;
CREATE TABLE  `cjec`.`apparel_colour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apparelSizeId` int(10) unsigned NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `apparelSizeId` (`apparelSizeId`),
  CONSTRAINT `apparel_colour_ibfk_1` FOREIGN KEY (`apparelSizeId`) REFERENCES `apparel_size` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- /

-- DROPPING TABLES
DROP TABLE apparel_size;
DROP TABLE apparel_colour;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEMENTS: DRAG AND DROP UPLOAD PRODUCT IMAGES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- http://dev.elementshop.co.uk/admin/product_images.php?pid=178

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEMENTS: PAYPAL API
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- PayPal API https://developer.paypal.com/docs/classic/api/gs_PayPalAPIs
-- To make calls to the PayPal APIs, you must have a PayPal Premier or PayPal Business account
--  To obtain an AppID value for use in the PayPal production environment, submit your application for review, as described in Going Live with Your Application
-- When testing your Adaptive API calls in the Sandbox, uses the static AppID value for the Sandbox: APP-80W284485P519543T
- Products: Express Checkouts; 
- https://developer.paypal.com / sales@underfloorheating-uk.co.uk / un177w1n -- Business Account
- https://developer.paypal.com/webapps/developer/applications/createapp
-- Sandbox account: sales-facilitator@underfloorheating-uk.co.uk
-- Endpoint: api.sandbox.paypal.com
-- AppID: APP-80W284485P519543T
-- Client ID: Ac6slxBxgI-h8KHC7ufoXnS5k348UfS03h1UU3TxCPEWwexicnTgOmC9Iqkb
-- Secret: EHOryRDBUTQgoMGaxbL4Jnt7EtQawef7AeXsf3DWWkDfUieDPSnhHKwzOX7n

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| HARMONI: ELECTRICAL WHOLESALERS GOOGLE MAP
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

http://www.harmonithermostat.co.uk/availability

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SPOTTED: VARIANTS AND PRODUCT VARIANTS MANAGEMENT SYSTEM
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

https://www.spottedpenguin.co.uk/admin/product_variants.php?id=431 == http://www.office-furniture-direct.co.uk/product.php?pid=431&cat=2

USE spottedpenguin;

DESC variant;
SELECT * FROM variant;

DESC variant_item;
SELECT * FROM variant_item; 

DESC product_variant;
SELECT * FROM product_variant;

DESC product_variant_item;
SELECT * FROM product_variant_item; 

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: ADD WRITE OFF FLAGS FOR RETENTIONS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- http://dev.cjec.co.uk/admin/applications_pending.php
- dev.cjec.co.uk/admin/application_details.php?applicationid=150
- SELECT * FROM application WHERE Application_ID=150; 
- http://dev.cjec.co.uk/admin/report_retentions.php 
-- adjust sql -- £0 Outstanding Contracts, £0 Outstanding Defects

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: SAGE CREDIT NOTE INTEGRATION
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

https://www.elementshop.co.uk/admin/sage_export.php
https://www.elementshop.co.uk/integration/sage/debug.php
https://www.elementshop.co.uk/integration/sage/list.php
httpdocs/cron/integrate_sage.php

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: GOOGLE CERTIFIED SHOPS / CHANNEL SALES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 12 Monthly Sales Underfloor Heating Sales
SELECT DATE_FORMAT(Created_On, '%Y-%m') AS Date, COUNT(*) AS 'UFH Web Orders'
FROM orders
WHERE Channel_ID=1 AND Order_Prefix='W' AND Created_On>=ADDDATE(NOW(), INTERVAL -12 MONTH)
GROUP BY Date
ORDER BY Created_On ASC;

-- 12 Monthly Sales Heatershop Sales
SELECT DATE_FORMAT(Created_On, '%Y-%m') AS Date, COUNT(*) AS 'HS Web Orders'
FROM orders
WHERE Channel_ID=7 AND Order_Prefix='W' AND Created_On>=ADDDATE(NOW(), INTERVAL -12 MONTH)
GROUP BY Date
ORDER BY Created_On ASC;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: DATE TIME: ESTIMATED DELIVERY 
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php

// http://dev.elementshop.co.uk/admin/postage.php
// Outout comma-separated list of postingOnDays ('Posting On These Days')
$days = array();
$days[1] = 'Mon';
$days[2] = 'Tue';
$days[4] = 'Wed';
$days[8] = 'Thu';
$days[16] = 'Fri';
$days[32] = 'Sat';
$days[64] = 'Sun';

$sqlDays = array();

	foreach($days as $dayBit=>$dayItem) {
		$sqlDays[] = sprintf('SELECT *, IF(postingOnDays & %1$d, \'%2$s\', NULL) AS day, IF(postingOnDays & %1$d, %1$d, NULL) AS dayIndex
			FROM postage', $dayBit, $dayItem);
	}

	$page = new Page('Postage Settings');
	$page->Display('header');
	$table = new DataTable('postage');
	$table->SetSQL(sprintf('SELECT *, GROUP_CONCAT(p.day ORDER BY dayIndex ASC SEPARATOR \', \') AS PostageDays FROM (%1$s) AS p GROUP BY p.Postage_ID', implode(' UNION ALL ', $sqlDays)));
	$table->AddField('ID', 'Postage_ID', 'right');
	$table->AddField('Name', 'Postage_Title', 'left');
	$table->AddField('Posting On These Days', 'PostageDays', 'left');
	$table->AddField('Days for Delivery', 'Postage_Days', 'right');
	$table->AddField('Cut Off Time', 'Cut_Off_Time', 'right');
	$table->AddLink("postage.php?action=update&id=%s",
					"<img src=\"/resources/common/images/icons/16/wrench-screwdriver.png\" alt=\"Update Settings\" border=\"0\">",
					"Postage_ID");
	$table->AddLink("javascript:confirmRequest('postage.php?action=remove&confirm=true&id=%s','Are you sure you want to remove this postage band? IMPORTANT: removing this postage band will remove any shipping settings associated with it.');",
					"<img src=\"/resources/common/images/icons/16/cross.png\" alt=\"Remove\" border=\"0\">",
					"Postage_ID");
	$table->SetMaxRows(25);
	$table->SetOrderBy("Postage_Title");
	$table->Finalise();
	$table->DisplayTable();	

	echo '<input type="button" name="add" value="add a new postage band" class="btn" onclick="window.location.href=\'postage.php?action=update\'">';
	$page->Display('footer');
}
?>
<?php 
// http://dev.elementshop.co.uk/System/Framework/Common/Postage.php
// TASK: calculate estimated delivery to show customer and send to google  
// PROBLEM: calculate and display estimated delivery date for each option taking into account the weekend days:
// We can't deliver on Sat or Sun so must count through successive days (before limit of days for delivery number) to check we've not encountered either a Sat or Sun
// -- If we reach days for delivery number before encountering a Sat or Sun, then we can easily calculate the delivery date (or range) given the chosen delivery option
// --- Calculation in all cases: $estimatedDeliveryDate = date("Y-m-d", strtotime("+" . $daysForDelivery + $additionalDays . " Days", strtotime(nowDate()))); 
// If we encounter a Sat or Sun number before reaching the days for delivery number, then we add an additional day each for Sat and Sunday to the estimated delivery date
// -- This doesn't apply for Saturday deliveries (which can be made on Friday before 15:00)... this exception is why we need to create deliv-day checkboxes for each option
// --- We run through the days, checking if the next day is checked (is posting on that day), if checked add one, else (sat or sun), don't add one b/c not included
// We need to know where we are in the week so that we can get an accurate count of sat and sundays occuring within the period beginning now and ending now + days

// Rules...
// Next Working Day Delivery Before 10AM // If ordering on Saturday or Sunday, next day delivery is Tuesday
// Next Working Day Delivery Before 12PM // If ordering on Saturday or Sunday, next day delivery is Tuesday
// Next Working Day Delivery Before 6PM // If ordering on Saturday or Sunday, next day delivery is Tuesday
// Standard 1-2 Day Delivery // If ordering on Friday, Saturday or Sunday, day 1 (of 1 or 2) is Monday 
// Standard 2-5 Day Delivery // If ordering on Friday, Saturday or Sunday, day 1 (of 2 or 5) is Monday 
// Standard 5-10 Day Delivery // If ordering on Friday, Saturday or Sunday, day 1 (of 5 or 10) is Monday 
// Saturday Delivery Before 10AM // If ordering after 15:00 on Friday, delivery will be made on the Saturday of next week, else, this week
// Saturday Delivery Before 12PM // If ordering after 15:00 on Friday, delivery will be made on the Saturday of next week, else, this week

// CODE: Create Postage Common with Postage_ID and current date/time (so we can check day andif before 15:00) as parameter

// if(strtotime(cDatetime($orderDateTime, 'hourminutes')) > strtotime('15:00')) {
// 1.1

public static function getEstimatedDeliveryDate($postageId, $orderDateTime = null) {
	$postageData = DataRecord::fetchRecords(sprintf('SELECT p.Postage_Days, p.postingOnDays
	FROM postage AS p
	WHERE p.Postage_ID=%d', $postageId));

	$postageDays = $postageData['Postage_Days'];
	$postingOnDays = $postageData['postingOnDays'];

	$orderDateTime = !is_null($orderDateTime) ? $orderDateTime : now();
	$orderDateTimeArray = getdate($orderDateTime);
	$orderHour = $orderDateTimeArray['hours'];
	$orderDay = $orderDateTimeArray['wday']; // 0 (for Sunday) through 6 (for Saturday)
			
	// Ordered after 15:00 on any day
	if($orderHour >= 15) {
		 $additionalDaysCounter = 1;

	// Ordered after 15:00 on Friday
	} elseif($orderHour >= 15) && ($orderDay == 5) {
		$additionalDaysCounter = 3;

	// Ordered on Saturday
	} elseif($orderDay == 6) {
		$additionalDaysCounter = 2;

	// Ordered on Sunday
	} elseif($orderDay == 0) {
		$additionalDaysCounter = 1;

	} else {
		$additionalDays = 0;
	}


	while($postageDays > 0) {
		if($postingOnDays & 32 || $postingOnDays & 64) {
			$additionalDays++; 
		}		
		$postageDays--;  
	}

	$estimatedDeliveryDate = date("Y-m-d", strtotime("+" . $postageDays + $additionalDays . " Days", strtotime($orderDateTime)));
}


// 1.0
$daysForDelivery = $postage->Days;
$counter = $daysForDelivery;
$additionalDays = 0;

while($counter > 0) {
	if($postage->PostingOnDays & 32 || $postage->PostingOnDays & 64) { // flagged Sat or Sun?
		$additionalDays++; // increment additionalDays
	}		
	$counter--;  
}

// calculate estimatedDeliveryDate
$estimatedDeliveryDate = date("Y-m-d", strtotime("+" . $daysForDelivery + $additionalDays . " Days", strtotime(nowDate()))); 


// TODO: 
// https://www.elementshop.co.uk/admin/postage.php
// Heatershop ready to start qualification period... replicate on other shops
// Testing: HEATERSHOP chris.powell@cjelectrical.co.uk / stockwell
// Testing: enable chris credit account: SELECT * FROM contact WHERE Contact_ID=1266532; -- set: credit_active = 1; credit_limit = 10000.00
// Delete test orders as we go: 

// WORKINGS:
// think of days as columns: Monday | Tuesday | Wednesday |Thursday | Friday | Saturday | Sunday
// think columns checks/flags to show day: Monday = | 1 | 0 | 0 | 0 | 0 | 0 | 0 // as binary numbers: Monday = 0000 0001 (1)
// think columns checks/flags to show day: Tuesday = | 0 | 1 | 0 | 0 | 0 | 0 | 0 // as binary numbers: Tuesday = 0000 0010 (2)
// think columns checks/flags to show day: Wednesday = | 0 | 0 | 1 | 0 | 0 | 0 | 0 // as binary numbers: Wednesday = 0000 0100 (4)

// in elements.postage DayFlags (TINYINT unsigned) holds the checks//flags for each option to indicate...
// ...the days that ? (cannot be shipped?) (can be shipped?) (the day shipping can be started?)

define('DAYS', 		1 		 ); // 0000 0001 (  1)
define('MONDAY', 	DAYS 	 ); // 0000 0010 (  1)
define('TUESDAY',	DAYS << 1); // 0000 0100 (  2)
define('WEDNESDAY', DAYS << 2); // 0000 1000 (  4)
define('THURSDAY',	DAYS << 3); // 0001 0000 (  8)
define('FRIDAY', 	DAYS << 4); // 0010 0000 ( 16)
define('SATURDAY', 	DAYS << 5); // 0100 0000 ( 32)
define('SUNDAY', 	DAYS << 6); // 1000 0000 ( 64)

/*
$days = array(
	'monday' => 1,
	'tuesday' => 2,
	'wednesday' => 4,
	'thursday' => 8,
	'friday' => 16,
	'saturday' => 32,
	'sunday' => 64
	);
*/	

// $weekday = date("w", strtotime("2012-01-01"));
// This will be 0 for Sunday through 6, Saturday.

?>

SELECT * FROM orders ORDER BY Order_ID DESC LIMIT 20;s
SELECT Order_ID, Channel_ID, Created_On, Total, Invoice_First_Name, Invoice_Last_Name
FROM orders ORDER BY Order_ID DESC LIMIT 20;

NOTES
- Administrator: cjelect@gmail.com | Support Contacts (for escalations): Primary: webmaster@cjelectrical.co.uk / Secondary: webmaster@edisonhousegroup.co.uk
- https://www.google.com/trustedstores/sell#landingpage/overview
- legal programme: http://www.google.com/trustedstores/sell/program_agreement/GoogleProgramAgreement_GB.html
- managing escalations: https://support.google.com/trustedstoresmerchant/answer/6063089
- https://www.google.com/merchants
-- google merchant center help: https://support.google.com/merchants/ansawer/188487 / https://support.google.com/merchants/contact/account2

<?php

// $settingGoogleMerchantShopIds = array('Heater Shop' => 10242222, 'Frost Protection' => 9950163, 'Trace Heating UK' => 8975495, 'Demister Shop' => 10406172, 'Underfloor Heating (UK)' => 9976628, 'Solar Trade Sales' => 7531188, 'Eco Energy Direct' => 8994552, 'Elementshop' => 432133); 
?>

<script type="text/javascript">
		var gts = gts || [];

		gts.push(['id', '<?php echo $settingGoogleCertifiedShopsId; ?>']);
		gts.push(['badge_position', 'BOTTOM_RIGHT']);
		gts.push(['locale', 'en_GB']);
		gts.push(['google_base_offer_id', 'ITEM_GOOGLE_SHOPPING_ID']);
		gts.push(['google_base_subaccount_id', 'ITEM_GOOGLE_SHOPPING_ACCOUNT_ID']);
		gts.push(['google_base_country', 'ITEM_GOOGLE_SHOPPING_COUNTRY']);
		gts.push(['google_base_language', 'ITEM_GOOGLE_SHOPPING_LANGUAGE']);

		(function() {
			var gts = document.createElement('script');
			gts.type = 'text/javascript';
			gts.async = true;
			gts.src = 'https://www.googlecommerce.com/trustedstores/api/js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(gts, s);
		})();
	</script>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| EPPH: DATE TIME: BOOKING CALENDAR DURATIONS (DATE_FORMAT, TIME_FORMAT - EXTRACT MINUTES FROM TIME)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php

$bookings = DataRecord::fetchRecords(sprintf('SELECT b.jobId, b.title, b.notes, j.Site_City, j.Site_Zip, r.Region_Name, CONCAT_WS(\'\', ch.documentPrefix, \'J\', j.Index_Number, CONCAT(\'/\', SUBSTRING(TRIM(p.Name_First), 1, 1), SUBSTRING(TRIM(p.Name_Last), 1, 1))) AS jobNumber, CONCAT_WS(\', \', j.Site_Address_1, j.Site_Address_2, j.Site_Address_3) AS address, b.allDay, b.start, DATE_FORMAT(b.start, \'%%a\') AS day, FLOOR(b.duration) AS duration, FLOOR(MOD(b.duration, 1) * 60) AS minutes, TIME_FORMAT(b.start, \'%%H:%%i\') AS startTime, TIME_FORMAT(ADDDATE(b.start, INTERVAL (b.duration*60) MINUTE), \'%%H:%%i\') AS endTime
	FROM booking AS b
	LEFT JOIN job AS j ON j.Job_ID=b.jobId 
	LEFT JOIN users AS u ON u.User_ID=j.Contract_Manager_ID 
	LEFT JOIN person AS p ON p.Person_ID=u.Person_ID 
	LEFT JOIN channel AS ch ON ch.Channel_ID=j.Channel_ID
	LEFT JOIN regions AS r ON j.Site_Region_ID=r.Region_ID
	WHERE b.employeeId=%1$d
	ORDER BY b.start ASC', $session->employee->getValue('id')));

$page = new Page('Bookings');
$page->Display('header');
?>

<div class="list">
	<table class="listTable">
		<thead>
			<tr>
				<th style="text-align: left;">Type</th>
				<th style="text-align: left;">Note</th>
				<th style="text-align: left;">Site Address</th>
				<th style="text-align: left;">Date</th>
				<th style="text-align: left;">Time</th>
			</tr>
		</thead>
		<tbody>

			<?php
			if(!empty($bookings)) {
				foreach($bookings as $booking) {
					if(!empty($booking['jobId'])) {
						?>
						<tr data-href="job_profile.php?id=<?php echo $booking['jobId']; ?>">
						<?php
					} else {
						?>
						<tr>
					<?php
					}
					?>
						<td><?php echo $booking['title']; ?></td>
						<td><?php echo $booking['notes']; ?></td>
						<td>
							<?php 
							if(!empty($booking['jobId'])) {
								echo sprintf('%s<br>%s, %s, %s', $booking['address'], $booking['Site_City'], $booking['Region_Name'], $booking['Site_Zip']);
							}
							?>
						</td>
						<td><?php echo $booking['day'] . ' ' . DateCommon::convertToLocale($booking['start']); ?></td>

						<?php

						$time = '';

						if($booking['allDay']) {
							$time = 'All day';
						} else {
							$time .= sprintf('%s&mdash;%s (%s%s%s)', $booking['startTime'], $booking['endTime'], ($booking['duration']) ? ($booking['duration'] != 1) ? $booking['duration'] . ' hours' : $booking['duration'] . ' hour' : '', ($booking['duration'] && $booking['minutes']) ? ' ' : '', ($booking['minutes']) ? $booking['minutes'] . ' minutes' : '');
						}
						?>
						<td><?php echo $time; ?></td>
					</tr>

				<?php
				}
			} else {
				?>

				<tr>
					<td colspan="5" align="center">No items available.</td>
				</tr>

				<?php
			}
			?>

		<tbody>
	</table>
</div>	

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: INVESTIGATE AND REPORT ON COSTINGS AND LIMITATIONS OF PAYPAL, AMAZON, EBAY, AND KLARNA
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

Payment Option Progress
- PayPal is available as an additional payment method in existing SagePay account
-- http://www.sagepay.co.uk/support/12/36/linking-paypal-to-your-live-account
- AP to call PayPal to query possibility of running multiple shop fronts from single PayPal account
- AP/PF to further investigate opportunity of offering European Payment methods (bank-to-bank) to SagePay
-- http://www.sagepay.co.uk/our-payment-solutions/additional-services/merchant-account-services/merchant-accounts-for-online
-- http://www.sagepay.co.uk/our-payment-solutions/additional-services/european-payments
-- https://www.sagepay.co.uk/file/7666/download-document/European%20Payment%20Types%20Set-Up%20Guide%20Final.pdf?token=TKth9ZlFIDy0KaUXQ9k5tT5633IPlzalEGE4jV2o4PY

Payment Option Considerations
- The mobile checkout experience (characterized by one or two clicks) will increasingly dictate expections of the desktop checkout experience
- A payment service's brand reputation can be leveraged to inspire faith in physical goods fulfilment e.g. Amazon vs Google Wallet or Apple Pay

Payment Option Summary
- (Choose x because y)
- PayPal for the number of registered accounts with stored account information: https://www.paypal.com/gb
- Stripe (debit/credit/amex cards) for 1-tap mobile payment user experience: https://stripe.com/checkout
- Amazon for number of registered accounts with stored account information: https://payments.amazon.co.uk/merchant
- Klarna (or other "pay after delivery" service) to lower customer's purchase resistance without delaying merchant payment: https://klarna.com/uk

Payment Costs Summary

							PayPal 				Stripe 				Amazon Payments			Klarna
Basic Transaction Fee 		3.4% + 20p			2.4% + 20p			3.4% + 20p				Call
Volume Transaction Fee 		1.9% (£15k-55k)		Call (>£20k)		Call 					Call
Monthly Fee 				£0 Std; £20 Pro 	£0 					£0 						Call

---

Up to £1,500							3.4% + £0.20
£1,500 - £6,000							2.9% + £0.20
£6,000 - £15,000						2.5% + £0.20
£15,000 - £55,000						2.1% + £0.20
More than £55,000						1.7% + £0.20

SAGEPAY: paypal and sofort
> Add/remove payment types at any time
http://www.sagepay.co.uk/our-payment-solutions/online-payments/payment-options

> Merchant accounts for Online payments
- Visa, MasterCard, Diners and Discover cards
- American Express cards
- JCB cards
- PayPal
- Local European payments
http://www.sagepay.co.uk/our-payment-solutions/additional-services/merchant-account-services

PayPal payments can easily be accepted directly through Sage Pay.  Your PayPal transactions will also appear within our reporting and admin tool to make your experience even better. £15,000.01 - £55,000 monthly sales: 1.9% + 20p; Above £55,000 monthly sales: 1.4% + 20p
http://www.sagepay.co.uk/our-payment-solutions/additional-services/merchant-account-services/merchant-accounts-for-online

Local European payments: If you're planning on trading across Europe, you may want to open up your business to a wider customer base by processing popular local European payment methods. These are bank-to-bank transfers commonly used in Germany, Austria and the Netherlands.

Local European payment merchant:
Set up fee (one off)	£15
Monthly fee	£20/month
Sofort transaction fee	2%
Giropay transaction fee	2%
http://www.sagepay.co.uk/our-payment-solutions/additional-services/merchant-account-services/merchant-accounts-for-online

Giropay: Germany
SOFORT: Germany, Austria and Netherlands
http://www.sagepay.co.uk/our-payment-solutions/additional-services/european-payments
https://www.sagepay.co.uk/file/7666/download-document/European%20Payment%20Types%20Set-Up%20Guide%20Final.pdf?token=TKth9ZlFIDy0KaUXQ9k5tT5633IPlzalEGE4jV2o4PY

- AMAZON CHECKOUT
Prices begin from 3.4% + 20p per transaction for accounts that receive less than £1,500 per month and drop down to 1.4% + 20p per transaction for those receiving over £55,000 per month. (Sep 2013) http://reasondigital.com/advice-and-training/six-uk-payment-gateways-compared/

- STRIPE

2.4% + 20p per successful charge. No monthly fees. Only get charged when you earn money. No refund costs If you refund a transaction, Stripe will return the entire fee. No hidden fees Stripe has no setup fees, no monthly fees, no card storage fees. £15 fee for chargebacks. If the dispute is resolved in your favor, Stripe refunds this fee.
https://stripe.com/gb/pricing

Checkout is an embeddable payment form for desktop, tablet, and mobile devices. It works within your site—customers can pay instantly, without being redirected away to complete the transaction. 
https://stripe.com/checkout

1-tap mobile payments
Payment on phones and tablets is frustrating. Nobody likes poking at their screens to type long card numbers. Checkout lets your customers save their details, connected to an email address and a phone number, and pay with a single tap. It's like Gravatar for payments, secured by single-use SMS codes.
https://stripe.com/checkout

You can also use the same bank account with multiple Stripe accounts. https://support.stripe.com/questions/stripe-account-for-multiple-projects

...most other payment providers require a “reserve.” This is a pile of cash that they hold onto to protect themselves against various risks associated with providing credit services to a business. This can often be a substantial fraction of monthly revenue, and becomes quite expensive from a cash-flow perspective. Stripe's transfer delay is designed as a friendlier alternative to a reserve system.

It's also worth noting that this hold occurs on a rolling basis; so, a charge made on Wednesday (while your account is on our seven day schedule) is in your bank account the following Wednesday, a charge on Thursday is in your bank the next Thursday, and so on. In this way, you can avoid the hassles traditionally associated with payment processors' reserves while still gaining the benefit of continuous payouts.
https://support.stripe.com/questions/why-does-it-take-seven-days-to-receive-payments-in-my-bank-account

My first Stripe integration, using PHP
http://www.paulsilver.co.uk/blog/2013/10/stripe-integration-using-php/

- KLARNA
-- [Klarna's] competitors in Europe are Paypal, Germany’s Billpay and the Netherlands’ AfterPay, among others.
http://pando.com/2012/11/13/the-swedish-way-to-pay-klarnas-makes-invoicing-look-good/
-- Per transaction fee: 1.5% - 3% per transaction  
--- http://www.quora.com/How-does-Klarna-make-money
--- https://klarna.com/uk/sell-with-klarna
--- http://en.wikipedia.org/wiki/Klarna
--- http://barracloughandco.com/2013/12/19/klarna-sofort-merge-uk-still-isolated-from-innovation/

Credit cards holds the position of the most popular payment alternative in both Europe and the US by a market share of approximately 40%.[11] In some European countries where Klarna operates, like Germany and Sweden, invoice is the most popular alternative

- PAYPAL:
> Yes, you can set  up a parent company that would have 4 - 6 divisions with each division having their own identity and all filtering into one parent account. There is not a limit and there is no additional costs to set this up. All you need to do is call PayPal directly and speak to the sales department to get it all set up. I hope this helps.
--- https://www.paypal-community.com/t5/Merchant-services-Archive/Multiple-businesses-with-one-account/td-p/211740

- Express Checkout Process Slide Deck
-- https://www.paypal.com/uk/webapps/mpp/express-checkout

- Payment Process

!! Why are my payments for non-eBay sales pending and how can I prevent this?
> If you recently started to sell with PayPal and you don’t have any selling history with us, payments you receive (except eBay payments) are now being placed into your pending balance. As long as there are no problems with the transactions, you’ll have the money within 21 days. 
> Typically, you can access these payments within 7-14 days if you:
- Send the item to the buyer’s postal address, as shown on the Transaction Details page
- Mark the item as sent on the Transaction Details page and provide the dispatch details (for digital goods, mark the item as processed on the Transaction Details page).
> Once you complete the below requirements, you won’t be considered a new seller any more, and you should receive future payments sooner.
- Receive a predetermined number of payments
- Wait a predetermined number of days from the date you received your first payment.
> You can also view your remaining requirements and confirm your identity at any time by logging in to your account and visiting the Resolution Centre.
https://www.paypal.com/uk/webapps/helpcenter/helphub/article/?solutionId=FAQ2040&topicID=RECEIVING_MONEY_HELPHUB&m=TCI

!! Why is my payment Under Review?
> As a security measure to protect our sellers, we review potentially higher-risk payments. When this happens, we place a hold on the payment within minutes of it being sent and ask the seller not to deliver the item/service associated with this payment. The payment will appear as Under Review in the recipient’s account.

> We aim to review the payment within 24 hours of placing it on hold. Once our review is complete, we'll either clear the payment or reverse it.

> All payments that we clear are eligible for our Seller Protection. If the payment isn't approved, we advise the seller not to deliver the item/service. This helps the seller to avoid potential losses.
https://www.paypal.com/uk/webapps/helpcenter/helphub/article/?solutionId=FAQ495&topicID=RECEIVING_MONEY_HELPHUB&m=TCI

!! Why was a reserve placed on my account, and how can I remove it?
> Account reserves are placed and evaluated on a case-by-case basis. A reserve may be placed on your account if there is a higher than average risk bankruptcy or other payment issues associated with your account. In determining this, PayPal considers a variety of factors, including:

- How long you’ve been in business
- Whether your industry has a higher than average likelihood of bankruptcy or payment issues
- Your processing history with PayPal and/or other providers
- Your account’s performance with respect to customer claims and disputes
- Your business and/or personal credit history
- Your delivery time frames
- Your account’s performance with respect to returns and chargebacks
- Your unique business model
> Once your account has a reserve, PayPal re-evaluates your processing attributes from time to time to determine whether the reserve can be removed or whether the amount of money kept in the reserve can be decreased. So, with adjustments in some key areas, it’s possible that your reserve may be lifted or reduced.

> There are things you can do to lessen the likelihood of a reserve being placed on your account, however removal of the reserve altogether is dependent on a number of factors and isn’t always possible for every account.
https://www.paypal.com/uk/webapps/mpp/holds-reserves

!! I’m a PayPal Heretm merchant, and my account has a reserve. What can I do to remove it?
> All PayPal Here merchants will have their reserve settings reviewed every ninety days. With good account performance, your reserve will be lessened so that more of your funds are available for withdrawal immediately. Follow our Seller Best Practices below to avoid buyer disputes, claims and chargebacks.
Whenever we make a change to your reserve settings, we will notify you via email.

> PayPal Heretm Seller Best Practices:
- Ensure that your return policy is clearly defined.
- If you are involved in a buyer dispute, start working to resolve it right away. Frequent, honest and open communication with the buyer via the Resolution Centre will help clear up any misunderstanding.
- It’s important to make your Card Statement Name as clear as possible so that customers will recognize your charge on their card statement. If a customer doesn’t recognise a charge, they could open a complaint that they did not recognize or did not authorise the charge. The Card Statement Name is the name that will appear on your customer’s credit or debit card statements. To help your customers remember where they shopped, make sure your Credit Card Statement Name is correct by following the instructions below.

!! How do I prevent reserves from being placed on my account?
> Preventing reserves isn’t always possible, however you can lessen your risk factors and improve your customer service in the process by following Seller Best Practices below.

> Seller Best Practices
- Use clear photos of the product  and detailed, accurate descriptions of items, so buyers know exactly what they’re getting. This will help cut down on buyer disappointments and disputes.
- Be clear about shipping and handling times, costs, and methods; process orders promptly to avoid delays.
- Be sure to pack items carefully with appropriate, quality packing material, so customers receive the items in good condition.
- Track packages you’ve shipped to cut down on the amount of time money is temporarily unavailable. Use a shipping method that provides tracking information, such as RoyalMail, Parcel Force or FedEx.
- Clearly define your return policy up front to avoid problems later.
- If you are involved in a buyer dispute, start working to resolve it right away. Frequent, honest, and open communication with the buyer via the Resolution Center will help clear up any misunderstanding.
> Providing customers with prompt service and accurate order fulfillment may lessen the likelihood of complaints or returns in the future.
https://www.paypal.com/uk/webapps/mpp/holds-reserves

!! Funds Availability: Why isn’t the money I’ve received immediately available for me to use?
> Funds shown in your pending balance will be moved to your available balance within 21 days. Your pending balance helps ensure there is money in your account in case problems arise with any of your transactions. 

!!! Why are funds placed into my pending balance rather than into my available balance?
> There are three main reasons funds may be unavailable:

- 1. You’re a new seller with PayPal.
> It takes time for new sellers to build up enough history to demonstrate a pattern of positive buyer-seller transactions. The good news is that by building up a history of positive selling activity, your funds may become available immediately.

- 2. Customers indicate issues about your selling performance.
> Performance is based on the speed of delivery of goods or services. The percentage of refunds, disputes, and chargebacks compared to sales on your PayPal account are key indicators of seller performance. Having performance issues increases the likelihood of received funds being temporarily unavailable. Working with your customers to prevent disputes and chargebacks will help avoid the delay in availability of funds.

- 3. There’s a higher than average risk associated with your sales activity.
> If there is an indication that a high level of risk is present, your money could be temporarily unavailable. You may be selling what we consider high-risk items. High-risk items include tickets, gift cards, consumer electronics, computers, and travel packages. Further examples of higher risk sales activity would be a recent spike in sales, a change in average selling price, or a change in business model or type of item being sold.

!!! When will I have access to my money?
> If there aren’t any problems with the order, such as a customer filing a dispute, the funds will move to your available balance within 21 days of receipt.

!! How can I prevent delays in funds availability?
> There are three things you can do to help prevent delays in funds availability in the future:

1. Build a history of good performance as a seller.
> The number one thing you can do to prevent delays in funds availability is build a history of consistent performance. Here are some ways to help you do this:
- Use clear photos of the product and detailed, accurate descriptions of items, so buyers know exactly what they’re getting. This will help cut down on buyer disappointments and disputes.
- Be clear about shipping and handling times, costs, and methods; process orders promptly to avoid delays.
- Be sure to pack items carefully with appropriate, quality packing material, so customers receive the items in good condition.
- Track packages you’ve shipped. Use a shipping method that provides tracking information, such as Royal Mail, Parcel Force or FedEx.
- Clearly define your return policy up front.

2. Communicate and work with your customers.
> When customers contact you, do your best to be responsive and helpful. Working with customers early on can prevent a minor issue from ballooning into a much larger problem, and following the guidelines listed previously will help to reduce the number of buyer disputes, claims, and chargebacks that you receive. If you are involved in a buyer dispute, start working to resolve it right away. Frequent, honest, and open communication with the seller via the Resolution Center will help clear up any misunderstanding.

> Also, setting up a customer service message in the Resolution Center may help to prevent disputes. For example, if shipments will be delayed because of bad weather, letting the buyer know may answer their question and make a dispute unnecessary.

3. Always review all communications from PayPal.
> We’ll always send you an email if anything regarding the availability of your funds changes. We also inform you about each transaction that’s placed into your pending balance and ask you to take action if required.
https://www.paypal.com/uk/webapps/mpp/fundsavailability

- EBAY:

Read: http://sellercentre.ebay.co.uk/ebay-shop-subscriptions-fees

> Insertion fees and Shop subscriptions

| Your approx. listings per month 	| Shop level 	| Monthly 	| Insertion fees
|									|				|						| Free fixed price listings	Price per additional fixed price listing	Price per auction starting under £1	Price per auction starting at £1 or more
Up to 65 						| None		 | Free					0	£0.26	£0.09	£0.26
65-600	Basic	£17.38	200	£0.09	£0.04	£0.13
600-5000	Featured	£52.17	1200	£0.04	£0.04	£0.13
Over 5000	Anchor	£217.38	Unlimited	Free	£0.04	£0.13
http://sellercentre.ebay.co.uk/fees-business-sellers-0


> When your item sells, you pay a final value fee based on the total transaction value with postage per item. This is regardless of your Shop level and how much you pay depends on the category.
* Category: Everything Else; Final Value Fee: 9.6%; Exceptions: None
http://sellercentre.ebay.co.uk/fees-business-sellers-0

> Fee discounts for eBay Top-rated sellers. As an eBay Top-rated seller, your listings that meet our eBay Premium Service guidelines receive a 15% final value fee discount.
http://sellercentre.ebay.co.uk/fees-business-sellers-0

-
http://sellercentre.ebay.co.uk/
https://go.developer.ebay.com/what-ebay-api

- AMAZON:
-- Both channels (amazon and owned-amazon-powered-webstore) use a single inventory pool, so both will have an accurate count of how much inventory is available.
-- Add customer ratings and reviews—like on Amazon.com!
-- Payment processing handled by amazon at "competitive rates"
--- http://webstore.amazon.com/Selling-on-Integration/b/9437442011

-- ACCOUNT:
--- "Sell on your own website AND sell on Amazon.co.uk"
-- 1% transaction based fees + payment processing & fraud protection fee otal payments through APE (monthly)	Price per transaction

> Discount levels for a Seller account will be based on the total average transaction payment volume for the 3 months preceding the application date. Other conditions may apply

Total payments through APE (monthly)	Price per transaction
--------------------------------------------------------------
Up to £1,500							3.4% + £0.20
£1,500 - £6,000							2.9% + £0.20
£6,000 - £15,000						2.5% + £0.20
£15,000 - £55,000						2.1% + £0.20
More than £55,000						1.7% + £0.20

-- UNLIMITED Bandwidth
-- UNLIMITED Storage
-- UNLIMITED SKUs
-- £9.99 + up to 10 months free
--- http://webstore.amazon.com/b/9437524011

-- SELLING FEES
--- Basic (Sell fewer than 35 items per month):
---- £0.75 per item fee
http://webstore.amazon.com/b/9437524011

-- Pro (Sell more than 35 items per month):
--- £25.00/mth subscription (Cancel anytime) + category-dependent per-item seller fees (VAT exclusive)
---- http://webstore.amazon.com/b/9437524011

-- REFERRAL FEES vs PER ITEM FEES (CATEGORY-DEPENDENT)
--- Amazon deducts the greater of the applicable referral fee percentage or applicable per-item minimum referral fee.
--- Category: Consumer Electronics; Referral Fee: 7%; Applicable Minimum Referral Fee (applied on a per-item basis unless otherwise noted): £0.40
--- Category: Electronic Accessories; Referral Fee: 12%; Applicable Minimum Referral Fee (applied on a per-item basis unless otherwise noted): £0.40
--- Category: Large Appliances; Referral Fee: 7%; Applicable Minimum Referral Fee (applied on a per-item basis unless otherwise noted): £0.40
---- http://services.amazon.co.uk/services/sell-online/pricing.html?ld=WBUKSOAWBAPricing#soa_basic_examples	

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: MEDLOCK INVOICE EMAIL INTEGRATION
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: SUBSTITUTE PRODUCTS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

USE elements;
DESC product;
DESC product_alternative;
DESC product_alternative_group;
DESC product_substitute;
SELECT * FROM product_alternative;
SELECT * FROM product_alternative_group;
SELECT * FROM product_substitute;

Product_Related_ID, Related_To_Product, Product_ID, Is_Active, Created_On, Created_By,
3854, 5201, 8303, 'N', 'Y', '2015-02-04 14:01:32', 72, '2015-02-04 14:01:32', 72
3855, 5199, 8302, 'N', 'Y', '2015-02-04 14:03:47', 72, '2015-02-04 14:03:47', 72
3857, 5195, 8300, 'N', 'Y', '2015-02-04 14:05:35', 72, '2015-02-04 14:05:35', 72
3856, 5193, 8299, 'N', 'Y', '2015-02-04 14:04:56', 72, '2015-02-04 14:04:56', 72

SELECT * FROM product ORDER BY Created_On DESC LIMIT 100;
SELECT * FROM product_related WHERE Created_By=72 ORDER BY Product_ID DESC;

SELECT p.Product_ID, p.Product_Title, p.SKU
FROM product_substitute AS ps
INNER JOIN product AS p ON p.Product_ID=ps.productId
WHERE ps.productId=5201
ORDER BY p.Product_Title ASC;

SELECT p.Product_ID, p.Product_Title, p.SKU
FROM product AS p
INNER JOIN product_substitute AS ps ON ps.productId=p.Product_ID
WHERE;

SELECT p.Product_ID, p.ProductTitle, p.SKU
FROM (
  SELECT ps.productId
  FROM product_substitute AS ps
  WHERE ps.substituteProductId=5201 AS sub;
)

WHERE p.Product_ID=sub;

http://dev.elementshop.co.uk/admin/product_profile.php?pid=5201 // substitute
http://dev.elementshop.co.uk/admin/product_profile.php?pid=8303 // substitute


+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: DATEPICKER JS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

// replaced scw js with datepicker js

FIND
'onclick="scwShow(this, this);" onfocus="scwShow(this, this);"'

REPLACE
'class="datePicker"'

DELETE (left comment // placeholders where deleted in case rewind required)
// $page->AddToHead('<script language="javascript" type="text/javascript" src="js/scw.js"></script>');
// $page->LinkScript('js/scw.js');


+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: COMMISSIONS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

USE cjec;
DESC invoice;
DESC orders;
DESC job;
DESC office;
SELECT * FROM office;
DESC office_worker;
DESC office_worker_invoice;
DESC office_worker_invoice_line;
SELECT * FROM office_worker_invoice;
SELECT * FROM office_worker_invoice_line;
SELECT * FROM office_worker WHERE officeId=17;
SELECT * FROM job WHERE Job_ID=57884;
SELECT * FROM job ORDER BY Job_ID DESC LIMIT 20;
SELECT * FROM office ORDER BY id DESC LIMIT 10;
SELECT Job_ID, officeCommission1Approved, officeCommission1InvoiceLineId, Is_Paid FROM job ORDER BY Job_ID DESC LIMIT 100;

SELECT j.Job_ID, j.Total_Price_Net, j.officeCommission1, j.officeCommission1InvoiceLineId,
CONCAT_WS('', ch.documentPrefix, 'J', j.Index_Number) AS Job_Number,
CONCAT_WS(' ', j.Billing_First_Name, j.Billing_Last_Name) AS Billing_Contact,
j.contractNumber AS Contract_Number, IF(j.OrderedOn<>'0000-00-00', j.OrderedOn, '') AS Ordered_Date
FROM job AS j
INNER JOIN office AS o ON o.id=j.officeId
LEFT JOIN channel AS ch ON ch.Channel_ID=j.Channel_ID
WHERE o.commissionType = 'New' AND o.commission=TRUE AND j.officeCommission1Approved=TRUE
AND j.officeCommission1InvoiceLineId IS NOT NULL AND j.Is_Paid='Y' AND j.Channel_ID IN (2, 5);

-- FKs on officeCommission1InvoiceId and officeCommission2InvoiceId references id.office_worker_invoice_line
-- TEST -- Job_ID 57884 
-- Template: C:\Projects\Web\cjec_contracting\resources\common\templates\print\components
-- common/templates/print/components/commission_invoice.tpl
-- admin/install_commissions_invoice_print.php
-- admin/install_commissions_invoice.php
-- admin/install_commissions.php
-- Common/CommissionInvoice.php

CONTEXT
- Dave needs to be able to run a script to see unapproved and unpaid commissions

-----
WORKINGS...

tbl office_worker...

SELECT * FROM job WHERE Job_ID IN (57593, 57594); -- test jobs: jobid=57593; jobid=57594 (deleted)

// commit dev: aca8075f7ccf62efc51fff2115a1a7b5b1971236
// commit dev: 11736f49608e7e2baf954e8ddda5a28b6fe875e0
// commit dev: ae8a6ef2b72aa29530de0ed78e6388384bd13681

New Dawn Job_ID
http://dev.cjec.co.uk/admin/job_details.php?jobid=57433
http://dev.cjec.co.uk/admin/job_details.php?jobid=57435
http://dev.cjec.co.uk/admin/job_details.php?jobid=57467
http://dev.cjec.co.uk/admin/job_details.php?jobid=57468
http://dev.cjec.co.uk/admin/job_details.php?jobid=57469
http://dev.cjec.co.uk/admin/job_details.php?jobid=57471
http://dev.cjec.co.uk/admin/job_details.php?jobid=57472

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: LITERATURE REQUEST
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- UPDATE literature SET active=0 WHERE active=1 AND id IN (2, 3, 4, 7, 8, 9, 10, 12, 13, 14);

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: HANNAH
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Elements Addressed Letterhead PDF
- Use Scripts/Generate/Letterheads.php

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: ABILITY TO DELETE NON CREDIT CARD DEPOSITS FROM JOBS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Delete trashcan only if NOT a credit/debit card (same as edit)
- See: http://dev.cjec.co.uk/admin/job_details.php?jobid=56033

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC + ELEM: PASSWORD MANAGEMENT SYSTEM
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// http://dev.cjec.co.uk/admin/user_account.php

if(isParam('confirm')) {
	if($form->Validate()) {
		if($form->GetValue('passwordNew') != '') {

			$passwords = DataRecord::fetchValues(sprintf('SELECT userPassword FROM user_password WHERE userId=%1$d ORDER BY id DESC LIMIT %2$d', $session->User->ID, Setting::GetValue('password_previous')));

			$decryptedPasswords = array();

			foreach($passwords as $password) {				
				$pass = new Cipher($password);
				$pass->Decrypt();
				$decryptedPasswords[] = $pass->Value;				
			}	
			
			if(in_array($form->GetValue('passwordNew'), $decryptedPasswords)) {
				$form->AddError('Password has been used before. Please choose and new password.', 'passwordNew');
			}
			
			if(!stristr($form->GetValue('passwordCurrent'), $session->User->GetPassword())) {
				$form->AddError('Current Password is incorrect.', 'passwordCurrent');
			}

			if(!stristr($form->GetValue('passwordConfirm'), $form->GetValue('passwordNew'))) {
				$form->AddError('Confirm Password does not match New Password.', 'passwordConfirm');
			}

			$session->User->SetPassword($form->GetValue('passwordNew'));			
		}

		if($form->Valid) {
			$session->User->Username = $form->GetValue('username');
			$session->User->Update();

			FeedbackCommon::add('Account successfully updated', null, 'bubbleFeedback');

			redirectTo();
		}
	}
}

// http://dev.cjec.co.uk/lib/common/app_header.php

$expireMonth = Setting::GetValue('password_expires');
$expiresOn = strtotime("+" . $expireMonth . " months", strtotime($session->User->PasswordValidFrom));

if($session->User->PasswordExpires) {
	if($expiresOn <= strtotime(nowDate())) {
		
		if((stristr($_SERVER['PHP_SELF'], 'user_account.php') === false) && (stristr($_SERVER['PHP_SELF'], 'window_user_recent.php') === false)) {
			redirect(sprintf('Location: %s', 'user_account.php'));
		}
	}
}

// http://dev.cjec.co.uk/admin/users.php?action=update

$user->SetPassword($form->GetValue('password'));
$user->PasswordExpires = $form->GetValue('passwordExpires');			
$user->PasswordValidFrom = (strlen($form->GetValue('passwordValidFrom')) > 0) ? sprintf('%s-%s-%s', substr($form->GetValue('passwordValidFrom'), 6, 4), substr($form->GetValue('passwordValidFrom'), 3, 2), substr($form->GetValue('passwordValidFrom'), 0, 2)) : '0000-00-00';

// System/Framework/Object/UserPassword.php
// System/Framework/Object/Users.php
// System/Library/Data/Object.php
// admin/lib/classes/User.php
// admin/lib/common/app_header.php
// admin/user_account.php
// admin/users.php

?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: ABILITY TO MERGE PRODUCTS IN NEW PURCHASE ADD SEARCH PRODUCT FACILITY
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Merge via Script: scripts/product_duplicates.php - ProductCommon::merge($duplicates)
- Merge in Product Search: http://dev.cjec.co.uk/admin/product_search.php 
- Merge in Product Profile: http://dev.cjec.co.uk/admin/product_profile.php?pid=553675#search

// AP: List product groups (by cat1) that can be merged into one product b/c they contain one or none cat1
SELECT p.Catalogue_Number_1, SUM(IntegrationCount) AS IntegrationCount, COUNT(p.Product_ID) AS ProductCount
FROM (

  SELECT Product_ID, Catalogue_Number_1, IF(Integration_ID<>'', 1, 0) AS IntegrationCount
  FROM product
  WHERE Catalogue_Number_1<>''

) AS p
GROUP BY p.Catalogue_Number_1
HAVING ProductCount>1 AND IntegrationCount<=1;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: UPDATE LOUGHBOROUGH TO LEICESTER IN CJEC, CJSOLAR, CJECO SETTINGS WITH NEW ADDRESS AND PHONE NUMBER
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

$settingBranches[] = array('Loughborough', 'Sales, Installation', array('G12 Regus House', 'East Midland Airport', 'Pegasus Business Park', 'Castle Donington, Leicestershire', 'DE74 2TZ', 'United Kingdom'), '01509 606805', $settingCompanyFax, $settingEmailSupport);
/*$settingBranches[] = array('Leicester', 'Sales, Installation', array('Unit 72', 'The Burrows', 'East Goscote', 'Leicester, Leicestershire', 'LE7 3XD', 'United Kingdom'), '01509 606805', $settingCompanyFax, $settingEmailSupport);*/

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: INSTALL FOREIGN KEY ON EMPLOYEE_TIMESHEET TABLE WHICH LINKS TO EMPLOYEE_HOLIDAY
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER TABLE employee_timesheet
ADD FOREIGN KEY (EmployeeHolidayID)
REFERENCES employee_holiday (Employee_Holiday_ID) -- tablename (column)
ON UPDATE CASCADE
ON DELETE SET NULL;

UPDATE employee_timesheet SET EmployeeHolidayID=NULL WHERE EmployeeHolidayID=0;
// error 1452 because data in child does not match data in parent
http://www.eliacom.com/mysql-gui-wp-errno-150.php

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: INTEGRATE WITH SAGEPAY TO RETRIEVE THE THIRD MAN RESULTS FOR TRANSACTIONS AND SHOW IN ORDERS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- PUTTY TEST URL: php dev.elementshop.co.uk/cron/fraud_screened_sage.php
-- Cron Command: php /var/www/vhosts/elementshop.co.uk/dev.elementshop.co.uk/cron/fraud_screened_sage.php
- System/Framework/Integration/SagePayIntegration.php
- https://live.sagepay.com/mysagepay/login.msp
- Cron: 5mins: Any payments where Fraud_Screened = N && Transaction_Type = AUTHENTICATE && Status = REGISTERED (LIMIT 1 whilst testing XML)
- SQL: Fraud_Screened Y/N
- API p114 2.73 Reporting Command - getFraudScreenDetail
- Add cols to payment tbl: fraudprovidername (T3M); t3mid/fraudid (4347594563); t3mscore/fraudcode (26); t3maction/fraudscreenrecommendation (OK)
- Create support tables: payment_fraud (with FK to payment.Payment_ID); payment_fraud_type;
- Create click-through view on orders - transactions page
-- http://dev.elementshop.co.uk/admin/order_transactions.php?orderid=126101
-- http://dev.elementshop.co.uk/admin/order_fraud.php?orderid=126101
-- http://dev.elementshop.co.uk/admin/order_transactions.php?orderid=126101 

<?php
/* 
SAMPLE RESPONSE
<?xml version="1.0" encoding="ISO-8859-1" ?>
	<vspaccess>
		<errorcode>0000</errorcode>
		<timestamp>11/11/2014 11:47:55</timestamp>

		<fraudprovidername>T3M</fraudprovidername> -- The 3rd Man
		<t3mid>4347594563</t3mid> -- Fraud Screening ID
		<t3mscore>26</t3mscore> -- Total fraud score
		<t3maction>OK</t3maction> -- Fraud Screening Results

		<t3mresults>
			<rule>
				<description>Phone no is a mobile</description> -- Phone no is a UK Landline (postive -3); Phone no is a mobile (negative +4)
				<score>4</score>
			</rule>
			<rule>
				<description>Postal address is recognised</description> -- Postal address is recognised
				<score>-2</score>
			</rule>
			<rule>
				<description>CV2 number not given</description> -- CV2 number not given
				<score>4</score>
			</rule>
			<rule>
				<description>Phone given for mult bill add</description> -- 
				<score>10</score>
			</rule>
			<rule>
				<description>Value Depending on Sub-Client Type.</description> -- 
				<score>5</score>
			</rule>
			<rule>
				<description>Value Depending on Sub-Client Type.</description> -- 
				<score>5</score>
			</rule>
		</t3mresults>
	</vspaccess>
</xml>	
*/
?>

Other rules/scores:
- CV2 Pass, 3rd Party Addr and >£51 (20)
- Anonymous email address (6)
- CbA No bad history, low confidence (-5)
- EbA No bad history, medium conf (-14)
- EC some high risk history, no conf (-2)
- ER Pass Billing (-18)
- ER Fail Billing (10)
- Surname within e-mail address (-11)
- Reported high risk address (45)
- Reported high risk telephone number (45)
- Reported high risk email (45)
- Problem address (70)
- Suspicious Address History (6)
- Billing addr. given for mult. txns (2)
- High value spending at billing address (5)
- High ATV at billing address (10)
- Unrecognized phone no format (4)
- Reported high risk telephone number (45)
- Elec Roll fail and >£x (8)
- Not a domestic issued card (18)

-- ALTER TABLE payment ADD COLUMN `fraudProvider` VARCHAR(10) NOT NULL AFTER `CV2_Result`;
-- ALTER TABLE payment ADD COLUMN `fraudScreenID` INT(11) NOT NULL AFTER `fraudProvider`;
-- ALTER TABLE payment ADD COLUMN `fraudTotalScore` INT(10) SIGNED NOT NULL AFTER `fraudScreenID`;
-- ALTER TABLE payment ADD COLUMN `fraudScreenResults` VARCHAR(32) NOT NULL AFTER `fraudTotalScore`;
-- ALTER TABLE payment ADD COLUMN `fraudRuleID` INT(11) NOT NULL AFTER `fraudScreenResults`;

CREATE TABLE payment_fraud (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `paymentID` int(10) unsigned NOT NULL DEFAULT '0',
 `fraudTypeID` int(10) unsigned NOT NULL DEFAULT '0',
 `createdOn` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
 `createdBy` int(10) unsigned DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

CREATE TABLE payment_fraud_type (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `description` text NOT NULL,
 `createdOn` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
 `createdBy` int(10) unsigned DEFAULT NULL,
 PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

$records = DataRecord::fetchRecords(sprintf('SELECT Payment_ID FROM payment WHERE fraudScreened = 0 AND Transaction_Type = \'AUTHENTICATE\' AND Status = \'REGISTERED\' AND Created_On > \'2014-11-01 00:00:00\' ORDER BY Created_On DESC'));

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: ALLOW EMPLOYEES TO ENTER JOBS FOR ANY JOB STATUS OTHER THAN IN PROGRESS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

if($job->Get($jobId)) {
	if(in_array($job->Status, JobCommon::getPendingStatus()) || (($job->Status == 'Completed') && (strtotime($job->completedOn)>strtotime('-1 month')))) {
	
// DLO: if(($job->Status == 'In Progress') || (($job->Status == 'Completed') && (strtotime($job->completedOn)>strtotime('-1 month')))) {
	$jobEligible = true;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: DO NOT CONSIDER DEPOSITS FOR SAGE EXPORT INTEGRATION UNLESS AT LEAST 30 MINUTES OLD GIVING TIME TO TIME OUT AND FAIL.
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Line 685: WHERE (p.Transaction_Type LIKE \'PAYMENT\' OR p.Transaction_Type LIKE \'REFUND\') AND p.Status LIKE \'OK\' AND p.Integration_ID=\'\' AND d.createdOn<=SUBDATE(NOW(),INTERVAL 30 MINUTE)

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: DUPLICATE CALENDAR LINK IN WEBSITE DIRECTORY INTO EMPLOYEES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: PRODUCT PROFILE STYLING -- 6eccbdb7143651eb49f97444070d20022c32f95d
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Update product profile with latest styling and introduce partials
- http://dev.cjec.co.uk/admin/product_profile.php?pid=352017
- http://dev.cjec.co.uk/admin/product_profile.php?pid=352117
- Email to Ipswich asking if anyone uses Create Purchas menu. If not response, delete.

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: ADD LITERATURE ACTIVE FLAG
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- http://dev.cjec.co.uk/admin/literature.php?action=edit&id=28 

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: ADD FILTERS TO INSTALLS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Add install confirmed date before and after to installs page filters
- Add install proposed date before and after to installs page filters

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: ADDED TLS FLAG - 41ef71dc0be0cbbc98efa357d105beeece0d260b
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- http://dev.cjec.co.uk/admin/job_details.php?jobid=56694

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: ESTIMATE PRINT NO LOGO
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

https://www.cjec.co.uk/admin/estimate_print.php?estimateid=13967&estimatesheet=1 -- HAS LOGO
https://www.cjec.co.uk/admin/estimate_print.php?estimateid=13958&estimatesheet=1 -- MISSING LOGO

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: UPDATE ADDRESS FOR LEICESTER; REPLACE LOUGHBOROUGH WITH LEICESTER IN OFFICE DB
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEMENTS: MANUFACTURERS PORTAL + ORDERS STATS PER MONTH FOR EACH MANUFACTURER'S PRODUCTS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php 
// AC @ 09:26

	$records = DataRecord::fetchRecords(sprintf('SELECT p.Product_Title, p.Product_ID AS Quick_Find, DATE_FORMAT(ol.Created_On, \'%%Y %%m\') AS Month, tp.Purchased, SUM(ol.Quantity) AS Orders, ts.Total_Orders, tq.Quantity
		
		FROM product AS p

		LEFT JOIN (
			SELECT ws.Product_ID, SUM(ws.Quantity_In_Stock) AS Quantity
			FROM warehouse_stock AS ws
			GROUP BY ws.Product_ID
		) AS tq ON tq.Product_ID=p.Product_ID

		LEFT JOIN (
			SELECT pl.Product_ID, SUM(pl.Quantity - pl.Quantity_Decremental) AS Purchased
			FROM purchase_line AS pl
			WHERE pl.Product_ID>0
			GROUP BY pl.Product_ID
		) AS tp ON tp.Product_ID=p.Product_ID

		LEFT JOIN (
			SELECT ol.Product_ID, SUM(ol.Quantity) AS Total_Orders
			FROM order_line AS ol
			WHERE ol.Despatch_Id > 0 AND ol.Product_ID>0
			GROUP BY ol.Product_ID
		) AS ts ON ts.Product_ID=p.Product_ID

		LEFT JOIN order_line AS ol ON ol.Product_ID=p.Product_ID AND ol.Created_On >= DATE_SUB(NOW(),INTERVAL 1 YEAR) AND ol.Despatch_Id > 0 AND ol.Product_ID > 0
		INNER JOIN manufacturer AS m ON m.manufacturer_ID=p.Manufacturer_ID AND m.manufacturer_ID=%d
		GROUP BY p.Product_ID, Month
		ORDER BY p.Product_Title ASC, Month ASC;', $session->Manufacturer->ID));	

// AC @ 08:37
SELECT p.Product_Title, p.Product_ID AS Quick_Find, DATE_FORMAT(ts.Created_On, '%Y %m') AS Month, tp.Purchased, ts.Orders, tq.Quantity

FROM product AS p

	LEFT JOIN (
			SELECT ws.Product_ID, SUM(ws.Quantity_In_Stock) AS Quantity
			FROM warehouse_stock AS ws
			GROUP BY ws.Product_ID
		) AS tq ON tq.Product_ID=p.Product_ID

		LEFT JOIN (
			SELECT pl.Product_ID, SUM(pl.Quantity - pl.Quantity_Decremental) AS Purchased
			FROM purchase_line AS pl
			WHERE pl.Product_ID>0
			GROUP BY pl.Product_ID
		) AS tp ON tp.Product_ID=p.Product_ID

		LEFT JOIN (
			SELECT ol.Created_On, ol.Product_ID, SUM(ol.Quantity) AS Orders
			FROM order_line AS ol
			WHERE ol.Despatch_Id > 0 AND ol.Product_ID>0
			GROUP BY ol.Product_ID
		) AS ts ON ts.Product_ID=p.Product_ID

INNER JOIN manufacturer AS m ON m.manufacturer_ID=p.Manufacturer_ID AND m.manufacturer_ID=217
GROUP BY p.Product_ID, Month
ORDER BY p.Product_Title ASC, Month ASC;

// AC + AP @ 16:43
$records = DataRecord::fetchRecords(sprintf('SELECT p.Product_Title, p.Product_ID AS Quick_Find, DATE_FORMAT(ol.Created_On, \'%%Y %%m\') AS Month, tp.Purchased, to.Orders, tq.Quantity
		
		FROM product AS p
		LEFT JOIN (
			SELECT ws.Product_ID, SUM(ws.Quantity_In_Stock) AS Quantity
			FROM warehouse_stock AS ws 
			GROUP BY ws.Product_ID

		) AS tq ON tq.Product_ID=p.Product_ID
		LEFT JOIN (
			SELECT pl.Product_ID, SUM(pl.Quantity - pl.Quantity_Decremental) AS Purchased 
			FROM purchase_line AS pl
			WHERE pl.Product_ID>0
			GROUP BY pl.Product_ID
		) AS tp ON tp.Product_ID=p.Product_ID

		LEFT JOIN (
			SELECT ol.Product_ID, SUM(ol.Quantity) AS Orders
			FROM order_line AS ol
			WHERE ol.Despatch_Id > 0 AND ol.Product_ID>0
			GROUP BY ol.Product_ID
		) AS ts ON to.Product_ID=p.Product_ID
		
		INNER JOIN manufacturer AS m ON m.manufacturer_ID=p.Manufacturer_ID AND m.manufacturer_ID=%d
		GROUP BY p.Product_ID, Month
		ORDER BY p.Product_Title ASC, Month ASC', $session->Manufacturer->ID));

// AC @ 15:53
$orderRecords = DataRecord::fetchRecords(sprintf('SELECT p.Product_Title, p.Product_ID AS Quick_Find, SUM(ol.Quantity) AS Orders, DATE_FORMAT(ol.Created_On, \'%%Y %%m\') AS Month, ws.Quantity_In_Stock AS Quantity, (pl.Quantity - pl.Quantity_Decremental) AS Purchased
	FROM product AS p
	-- LEFT JOIN warehouse_stock AS ws ON ws.Product_ID=p.Product_ID

	-- total purchase
	select * from purchase_line
	// (pl.Quantity - pl.Quantity_Decremental) AS Purchased
	group by product

	-- total sold
	select * from order_line group by product

	LEFT JOIN order_line AS ol ON ol.Product_ID=p.Product_ID AND ol.Created_On >= DATE_SUB(NOW(),INTERVAL 1 YEAR) AND ol.Despatch_Id > 0
	INNER JOIN manufacturer AS m ON m.manufacturer_ID=p.Manufacturer_ID AND m.manufacturer_ID=%d
	GROUP BY p.Product_ID, Month
	ORDER BY p.Product_Title ASC, Month ASC', $session->Manufacturer->ID));


// AP @ 15:47
$orderRecords = DataRecord::fetchRecords(sprintf('SELECT p.Product_Title, p.Product_ID AS Quick_Find, SUM(ol.Quantity) AS Orders, DATE_FORMAT(ol.Created_On, \'%%Y %%m\') AS Month, ws.Quantity_In_Stock AS Quantity
		FROM product AS p
		-- LEFT JOIN warehouse_stock AS ws ON ws.Product_ID=p.Product_ID

		-- total purchase
		select * from purchase_line
		// (pl.Quantity - pl.Quantity_Decremental AS Purchased)
		group by product

		-- total sold
		select * from order_line group by product

		LEFT JOIN order_line AS ol ON ol.Product_ID=p.Product_ID AND ol.Created_On >= DATE_SUB(NOW(),INTERVAL 1 YEAR) AND ol.Despatch_Id > 0
		INNER JOIN manufacturer AS m ON m.manufacturer_ID=p.Manufacturer_ID AND m.manufacturer_ID=%d
		GROUP BY p.Product_ID, Month
		ORDER BY p.Product_Title ASC, Month ASC', $session->Manufacturer->ID));	

?>	

- CHART: Product_Name; Quick_Find; Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec
-- Will need to loop through query to show monthly data for each product
-- x/col (months) * y/row (products) - for each product row, output cols of monthly orders //across and down; a single row, multiple cols, next...
-- ORDER BY Product_Name ASC; Show monthly sales between the current month and 12 months ago 
-- WHERE: Show only orders that have been dispatched (see order_line table: despatched)
--- WHERE ADDDATE(NOW(), INTERVAL -18 MONTH) > e.Created_On;
--- WHERE Created_On >= DATE_SUB(NOW(),INTERVAL 1 YEAR)
--- WHERE Manufacturer_ID = sprintf()
- http://dev.elementshop.co.uk/portal/manufacturer/login.php
- http://dev.elementshop.co.uk/portal/manufacturer/index.php
- https://www.elementshop.co.uk/portal/manufacturer/login.php
- https://www.elementshop.co.uk/portal/manufacturer/index.php
- Create ManufacturerSession table, class, and object to enable the logins of a manufacturer
-- Use Star (SAJ) as test - Manufacturer_ID = 217 - star.su@saj-solar.com / newpass: star123
- Star's change request: (for the Last 12 Months)
-- Revised Cols: Product Title | Quick Find | Total Purchased | Total Sold | Stock Qty 
-- Product descriptions: include C/W 10Y Warranty; exclude 'DC Switch'
-- Add missing product: SAJ Suntrio-TL12K Inverter (3phs, 2 MPPT, 10Y Warranty, Ethernet included) **** 8103 
---- SELECT FROM PRODUCT THEN ORDER LINE (missing product likely hasn't ever been ordered, hence doesn't appear on ORDER LINE...)

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEM: ADD CHANNEL SELECT TO LETTER CREATION + PASS CHANNEL ID TO PDF TEMPLATE
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- add channel id selector to create letter - http://dev.elementshop.co.uk/admin/letter_summary.php?cid=39
- take channel id into a template constructor (Standard) and put logo on pdf template page
- test: http://dev.elementshop.co.uk/admin/letter_summary.php?cid=....
- test: http://dev.elementshop.co.uk/admin/letter_details.php?letterid=... 

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: CONVERT CONTACT PROFILE GRAPHS INTO HIGHCHARTS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- http://dev.cjec.co.uk/admin/contact_profile.php?cid=3590
- http://dev.cjec.co.uk/admin/contact_profile.php?action=view&cid=4437
- type_organisation.php -- (See for AP code that inserts months of zero values between months with > zero values)

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: EXPORT TARIFF RATES: PDFs in: \\cjeserver\Company\CJ Solar\Feed in Tariff Info\\cjeserver\Company\CJ Solar\Feed in Tariff Info
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- $form->AddField('survey_rate', 'Export Rate', 'text', $calculation->surveyExportRate, 'float', 1, 11, true, 'style="width: 50%;"');
- (see calculation table and commit: 062d5ddf18bea5b386404639aaff074100a9e451)

http://dev.cjec.co.uk/admin/calculation_details.php?id=13002

DESC calculation;
SELECT * FROM calculation;
DESC calculation_rate;
SELECT * FROM calculation_rate;
SELECT MIN(startedOn) FROM calculation_rate;
SELECT startedOn, endedOn FROM calculation_rate GROUP BY startedOn ORDER BY startedOn;

INSERT INTO calculation_rate (id, type, rat,e rateLower, startedOn, endedOn) VALUES (DEFAULT, 'Export Tariff', 3.2, DEFAULT, '2012-04-01 00:00:00', '2012-08-01 00:00:00');
INSERT INTO calculation_rate (id, type, rate, rateLower, startedOn, endedOn) VALUES (DEFAULT, 'Export Tariff', 4.5, DEFAULT, '2012-08-01 00:00:00', '2012-11-01 00:00:00');
INSERT INTO calculation_rate (id, type, rate, rateLower, startedOn, endedOn) VALUES (DEFAULT, 'Export Tariff', 4.5, DEFAULT, '2012-11-01 00:00:00', '2013-07-01 00:00:00');
INSERT INTO calculation_rate (id, type, rate, rateLower, startedOn, endedOn) VALUES (DEFAULT, 'Export Tariff', 4.64, DEFAULT, '2013-07-01 00:00:00', '2014-01-01 00:00:00');
INSERT INTO calculation_rate (id, type, rate, rateLower, startedOn, endedOn) VALUES (DEFAULT, 'Export Tariff', 4.64, DEFAULT, '2014-01-01 00:00:00', '2014-04-01 00:00:00');
INSERT INTO calculation_rate (id, type, rate, rateLower, startedOn, endedOn) VALUES (DEFAULT, 'Export Tariff', 4.77, DEFAULT, '2014-04-01 00:00:00', '2014-07-01 00:00:00');
INSERT INTO calculation_rate (id, type, rate, rateLower, startedOn, endedOn) VALUES (DEFAULT, 'Export Tariff', 4.77, DEFAULT, '2014-07-01 00:00:00', '2015-01-01 00:00:00');

INSERT INTO example
  (example_id, name, value, other_value)
VALUES
  (100, 'Name 1', 'Value 1', 'Other 1'),
  (101, 'Name 2', 'Value 2', 'Other 2'),
  (102, 'Name 3', 'Value 3', 'Other 3'),
  (103, 'Name 4', 'Value 4', 'Other 4');

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: ADD CITIZENS ADVICE BUREAU AND FINANCIAL OMBUDSMAN TO COMPLAINT CREATION AND COMPLAINT DETAILS FOR UPDATING AS CHECKBOXES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: SHOW CUSTOMER NAME FROM JOB IN COMPLAINT PROFILE PAGE; ALSO REFORMAT CUSTOMER DETAILS ADDRESS AND DIVS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: EXTRACT: CPS NOTIFICATION SPREADSHEET (BUILDING REGS)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// CPS Notification Spreadsheet (Building Regs) EXTRACT

SELECT CONCAT_WS(' ', j.Billing_First_Name, j.Billing_Last_Name) AS Customer, CONCAT(c.documentPrefix, j.Index_Number) AS Job, j.installCompletedOn AS Notification_Date, DATE(j.Required_On) AS Installation_Date, 'NIC10404' AS NICEIC_CPS_Reg,
	og.Org_Name AS Company, 'Steve Daley' As QS, 'Dwelling house' AS Property_Type, j.Billing_Address_1 AS 'House Number', j.Billing_Address_2 AS 'Street', j.Billing_Address_3 AS 'Area', j.Billing_City AS 'Town',
	j.Billing_Zip AS Postcode, 'On roof' AS Appliance_Location, 'Install and commission photovoltaic system (M2)' AS Notification FROM job AS j
	INNER JOIN contact AS ct ON ct.Contact_ID=j.installContactId
INNER JOIN organisation AS og ON og.Org_ID=ct.Org_ID
INNER JOIN channel AS c ON c.Channel_ID=j.Channel_ID
WHERE j.Parent_ID=0 AND j.sector='Domestic' AND j.Channel_ID IN (2, 5) AND j.installStatus LIKE 'Install Complete' AND j.installCompletedOn BETWEEN {start} AND {end}
ORDER BY j.installCompletedOn ASC;

?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEMENTS: STOCK CHECK EXTRACT (EXCEL DOC) + DASHBOARD
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Create extracts to replicate Dans warehouse stock take figures
- Stock Check Results.xlsx
- Revisit Extract ID=197 (Stock Check Summary) with Dave's guidance on Total_Stock_Value figure
- Wed 20141029: Emialed Dan to review dashboards and request changes - Result: Dan happy but will review again
-- Dashboards: https://www.elementshop.co.uk/portal/warehouse/index.php

<?php
// (for search: subqueries)

// -- THESE WORK:

// -- SHEET 1: DATA
SELECT
wc.id AS Warehouse_Check_ID,
DATE(createdOn) AS Date,
COUNT(wcs.warehouseCheckId) AS Counted,
SUM(IF(wcs.quantityDifference<>0, 1, 0)) AS Difference,
SUM(wcs.grossQuantity) AS Gross_Quantity,
SUM(wcs.netQuantity) AS Net_Quantity,
ROUND(SUM(wcs.cost*wcs.grossQuantity),2) AS Variance_Value,
ROUND(((SUM(IF(wcs.quantityDifference<>0, 1, 0))/COUNT(wcs.warehouseCheckId))*100) ,2) AS 'Variance %',
GROUP_CONCAT(DISTINCT wcs.location ORDER BY wcs.location ASC SEPARATOR ', ') AS Locations

FROM (
		 SELECT wcs.warehouseCheckId, wcl.name AS location, wcsc2.quantity AS quantityCounted, wcs.cost, wcs.quantity AS quantityStocked,
			(CAST(wcsc2.quantity AS SIGNED)-CAST(wcs.quantity AS SIGNED)) AS quantityDifference, ABS(CAST(wcs.quantity AS SIGNED)-CAST(wcsc2.quantity AS SIGNED)) AS grossQuantity, CAST(wcsc2.quantity AS SIGNED)-CAST(wcs.quantity AS SIGNED) AS netQuantity

			FROM (
				SELECT wcs.id, MAX(wcsc.createdOn) AS createdOn
				FROM warehouse_check_stock_count AS wcsc
				INNER JOIN warehouse_check_stock AS wcs ON wcs.id=wcsc.warehouseCheckStockId
				GROUP BY wcs.id

		) AS wcsc

		INNER JOIN warehouse_check_stock_count AS wcsc2 ON wcsc2.warehouseCheckStockId=wcsc.id AND wcsc.createdOn=wcsc2.createdOn
		INNER JOIN warehouse_check_stock AS wcs ON wcs.id=wcsc2.warehouseCheckStockId
		LEFT JOIN warehouse_check_location AS wcl ON wcl.id=wcs.warehouseCheckLocationId
		INNER JOIN product AS p ON p.Product_ID=wcs.productId
		GROUP BY wcs.warehouseCheckId, wcs.productId

) AS wcs
INNER JOIN warehouse_check AS wc ON wc.id=wcs.warehouseCheckId
GROUP BY wc.id
ORDER BY wc.id;

// -- SHEET 2: SUMMARY
SELECT
DATE_FORMAT(Date, '%Y-%m') AS Month,
SUM(Counted) AS Counted,
SUM(Difference) AS Incorrect,
SUM(Gross_Quantity) AS Gross_Quantity,
SUM(Net_Quantity) AS Net_Quantity,
SUM(Variance_Value) AS Variance_Value,
ROUND((SUM(Difference)/SUM(Counted))*100, 2) AS 'Variance %',
ROUND(SUM(Cost*quantityStocked),2) AS Total_Stock_Value,
ROUND(SUM(Variance_Value)/SUM(Cost*quantityStocked), 2) AS 'TSV %'

FROM (

	SELECT
	wc.id AS Warehouse_Check_ID,
	DATE(createdOn) AS Date,
	COUNT(wcs.warehouseCheckId) AS Counted,
	SUM(IF(wcs.quantityDifference<>0, 1, 0)) AS Difference,
	SUM(wcs.grossQuantity) AS Gross_Quantity,
	SUM(wcs.netQuantity) AS Net_Quantity,
	ROUND(SUM(wcs.cost*wcs.grossQuantity),2) AS Variance_Value,
	ROUND(((SUM(IF(wcs.quantityDifference<>0, 1, 0))/COUNT(wcs.warehouseCheckId))*100) ,2) AS Variance,
	GROUP_CONCAT(DISTINCT wcs.location ORDER BY wcs.location ASC SEPARATOR ', ') AS Locations,
	wcs.cost AS Cost,
	quantityStocked

	FROM (

		SELECT wcs.warehouseCheckId, wcl.name AS location, wcsc2.quantity AS quantityCounted, wcs.cost, wcs.quantity AS quantityStocked,
			(CAST(wcsc2.quantity AS SIGNED)-CAST(wcs.quantity AS SIGNED)) AS quantityDifference, ABS(CAST(wcs.quantity AS SIGNED)-CAST(wcsc2.quantity AS SIGNED)) AS grossQuantity, CAST(wcsc2.quantity AS SIGNED)-CAST(wcs.quantity AS SIGNED) AS netQuantity

			FROM (
				SELECT wcs.id, MAX(wcsc.createdOn) AS createdOn
				FROM warehouse_check_stock_count AS wcsc
				INNER JOIN warehouse_check_stock AS wcs ON wcs.id=wcsc.warehouseCheckStockId
				GROUP BY wcs.id

				) AS wcsc

		INNER JOIN warehouse_check_stock_count AS wcsc2 ON wcsc2.warehouseCheckStockId=wcsc.id AND wcsc.createdOn=wcsc2.createdOn
		INNER JOIN warehouse_check_stock AS wcs ON wcs.id=wcsc2.warehouseCheckStockId
		LEFT JOIN warehouse_check_location AS wcl ON wcl.id=wcs.warehouseCheckLocationId
		INNER JOIN product AS p ON p.Product_ID=wcs.productId
		GROUP BY wcs.warehouseCheckId, wcs.productId

	) AS wcs

INNER JOIN warehouse_check AS wc ON wc.id=wcs.warehouseCheckId
GROUP BY wc.id
ORDER BY wc.id

) AS x

GROUP BY Month
ORDER BY Month ASC;

// -- SHEET 3: ORDER ACCURACY
SELECT Month, Orders_Despatched, Discrepancies, ROUND(100-((Discrepancies/Orders_Despatched)*100),2) AS 'Accuracy %'

FROM (

	SELECT o.Month AS Month, COALESCE(o.Orders_Despatched, 0) AS Orders_Despatched, COALESCE(d.Discrepancies, 0) AS Discrepancies

		FROM (
			SELECT
			DATE_FORMAT(Created_On, '%Y-%m') AS Month, COUNT(Despatch_ID) AS Orders_Despatched
			FROM despatch
			GROUP BY Month
		) AS o

		LEFT JOIN (
			SELECT
			DATE_FORMAT(createdOn, '%Y-%m') AS Month,
			COUNT(id) AS Discrepancies
			FROM discrepancy
			GROUP BY Month

		) AS d ON d.Month=o.Month

) AS a

ORDER BY Month ASC;

// -- SHEET 4: WAREHOUSE ACTIVITY
SELECT
	WEEK(dl.Created_On, 3) AS Week_No,
	DATE_ADD(DATE(dl.Created_On), INTERVAL 4 DAY) AS Week_Ending,
	COUNT(dl.Quantity) AS Order_Lines_Picked,
	SUM(dl.Quantity) AS Units_Picked,
	ROUND(SUM(dl.Quantity)/COUNT(dl.Quantity), 2) AS Units_Per_Order,
	ROUND(COUNT(dl.Quantity)/5, 2) AS Order_Lines_Per_Day
FROM despatch_line AS dl
	INNER JOIN despatch AS ds ON ds.Despatch_ID=dl.Despatch_ID
	WHERE dl.Created_On > '2014-05-01' AND dl.Despatch_ID>0 AND ds.Despatch_From_ID=1
	GROUP BY Week_No
	ORDER BY Week_No;

// WORKINGS...	

// AP solution
SELECT
wc.id AS Warehouse_Check_ID,
DATE(createdOn) AS Date,
COUNT(wcs.warehouseCheckId) AS Counted,
SUM(IF(wcs.quantityDifference<>0, 1, 0)) AS Difference,
SUM(wcs.grossQuantity) AS Gross_Quantity,
SUM(wcs.netQuantity) AS Net_Quantity,
ROUND(SUM(wcs.cost*wcs.grossQuantity),2) AS Variance_Value,
-- (SUM(IF(wcs.quantityDifference<>0, 1, 0))/COUNT(wcs.warehouseCheckId))*100 AS Variance,
ROUND(((SUM(IF(wcs.quantityDifference<>0, 1, 0))/COUNT(wcs.warehouseCheckId))*100) ,2) AS Variance,
GROUP_CONCAT(DISTINCT wcs.location ORDER BY wcs.location ASC SEPARATOR ', ') AS Locations

FROM (
		 SELECT wcs.warehouseCheckId, wcl.name AS location, wcsc2.quantity AS quantityCounted, wcs.cost, wcs.quantity AS quantityStocked,
			(CAST(wcsc2.quantity AS SIGNED)-CAST(wcs.quantity AS SIGNED)) AS quantityDifference, ABS(CAST(wcs.quantity AS SIGNED)-CAST(wcsc2.quantity AS SIGNED)) AS grossQuantity, CAST(wcsc2.quantity AS SIGNED)-CAST(wcs.quantity AS SIGNED) AS netQuantity

			FROM (
				SELECT wcs.id, MAX(wcsc.createdOn) AS createdOn
				FROM warehouse_check_stock_count AS wcsc
				INNER JOIN warehouse_check_stock AS wcs ON wcs.id=wcsc.warehouseCheckStockId
				GROUP BY wcs.id

		) AS wcsc

		INNER JOIN warehouse_check_stock_count AS wcsc2 ON wcsc2.warehouseCheckStockId=wcsc.id AND wcsc.createdOn=wcsc2.createdOn
		INNER JOIN warehouse_check_stock AS wcs ON wcs.id=wcsc2.warehouseCheckStockId
		LEFT JOIN warehouse_check_location AS wcl ON wcl.id=wcs.warehouseCheckLocationId
		INNER JOIN product AS p ON p.Product_ID=wcs.productId
		GROUP BY wcs.warehouseCheckId, wcs.productId

) AS wcs
INNER JOIN warehouse_check AS wc ON wc.id=wcs.warehouseCheckId
GROUP BY wc.id
ORDER BY wc.id;

?>

<?php  // AC attempt

SELECT *, Item_Value*Product_Errors AS Error_Value, (ABS(Product_Errors)/Products_Counted)*100 AS Error_Rate
FROM (
	SELECT DATE(wcs.createdOn) AS Date,
	COUNT(*) AS Products_Counted,
	wcs.quantity AS Quantity_Stocked,
	wcsc.quantity AS Quantity_Counted,
	(CAST(wcsc.quantity AS SIGNED)-CAST(wcs.quantity AS SIGNED)) AS Product_Errors,
	ROUND(wcs.cost, 2) AS Item_Value,
	GROUP_CONCAT(DISTINCT wl.name ORDER BY wl.name ASC SEPARATOR ', ') AS Locations
	FROM warehouse_check_stock_count AS wcsc
	LEFT JOIN warehouse_check_stock AS wcs ON wcs.id=wcsc.warehouseCheckStockId
	LEFT JOIN warehouse_location AS wl ON wl.productId=wcs.productId
	GROUP BY Date
) AS s
ORDER BY Date DESC;

?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEMENTS: SHOW UNITS PER PALLET ON SOLAR PANEL PRODUCTS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- SET Units Per Pallet on PID=5797 to 16 (PREV 288)
-- http://dev.elementshop.co.uk/admin/product_profile.php?pid=5797
- 9d72b37e269a95c4b34db421ce02eff092506215
-- http://dev.elementshop.co.uk/admin/order_details.php?orderid=121209
-- http://dev.elementshop.co.uk/admin/product_profile.php?pid=4691
-- http://dev.elementshop.co.uk/admin/product_stock.php?action=update&pid=4691

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| EMAIL DAVE LATEST DATED PDFS (NON-CROP/-PRINT MARKS) OF:
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------- 

- CJ Solar > Forms
-- Annual AC Output NCR
-- Order NCR
-- Terms
-- Warranty
- Make CJ Eco Terms from CJ Solar Terms - ammend according to red-inked proof

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------- 
| ELEMENTS: CLASSIFICATION FILTER AND DOWNLOAD AS CSV
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- http://dev.elementshop.co.uk/admin/report_popular_customers.php

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: PURCHASE ORDER...
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- http://dev.cjec.co.uk/admin/purchase_details.php?purchaseid=68411 // AC PO (still open with no items)

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: LEAD
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
- Add commission paid flag and commission paid on date to leads database
-- ALTER TABLE lead ADD COLUMN `commissionPaid` TINYINT(1) NOT NULL DEFAULT 0 AFTER `price`;
-- ALTER TABLE lead ADD COLUMN `commissionPaidOn` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' AFTER `commissionPaid`;
- TEST DATA: SELECT * FROM lead WHERE id=14299;
	
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: COMMISSIONS/OFFICES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
- CJEC: Add stage 1 and stage 2 commission values to the DataTable in Offices
- Create two new fields in Jobs for tracking who and when entered officeCommission into a job.
- Insert Summary: Add ChangedOn and changedBy using officeCommissionChangedOn; officeCommissionChangedby
-- Test: http://dev.cjec.co.uk/admin/job_details.php?jobid=48272 / Stage 3: 340.38

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CJEC: DOWNLOAD SATISFACTION NOTE PDF
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
- SELECT Job_ID, customerAccountNumber FROM job WHERE Job_ID=48272; // solarAnnualOutput = 2862; HIES: C14/H0013/00390
- CJEC: When AP has worked them, replicate the order of tool links on job details to install details 
- TEST: http://dev.cjec.co.uk/admin/job_details.php?jobid=55398

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOOGLE MERCHANT
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
- User Notepad to find replace new lines characters with commas to create multiple UPDATE STATEMENTS using excel...
- Where excel ticked, integrationGoogleMerchantAvailable = 1? (But Product_ID != Category_ID!) use product_in_categories?
--- SET p.integrationGoogleMerchantAvailable = 1 WHERE pic.Category_ID = (list of category IDs)
- Update google_base.php SQL line 106: WHERE integrationGoogleMerchantAvailable = TRUE;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ELEMENTS: CONSOLIDATED solarImmersun and solarIboost into solarHotwater flag in jobs db, object, class 
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
- UPDATE job SET `solarHotwater` = 1 WHERE solarImmersun = 1 OR solarIboost = 1;
- Once db is populated, strip out Immersun and iBoost from pages but leave in db

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| EXTRACT FILTERED LEADS AS CSV
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
- Add ability to extract leads as CSV (CJEC)
- Copy button at bottom of installs.php... 
- Copy installs.php (code creates hash (temporary store) of SQL query based on filtered data - see Csv function file

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| TIDY contact_profiles on CJEC AND ELEMENTS / CREATE PARTIALS FOR ALL SECTIONS (Profile, Quick Links, Sales)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
- http://dev.cjec.co.uk/admin/contact_profile.php?action=open&cid=52768
- http://dev.cjec.co.uk/admin/contact_profile.php?cid=32221
- http://dev.cjec.co.uk/admin/contact_profile.php?cid=35913
- http://dev.elementshop.co.uk/admin/contact_profile.php?cid=1361059

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ADD ORDERS PARTIAL TO QUOTE DETAILS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
- http://dev.elementshop.co.uk/admin/quote_details.php?quoteid=75571

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP 
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
- Version (5.3)

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - CREATING FILES - elements\System\Framework\Integration\FeefoIntegration.php
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
$xmlBuilder = new XmlBuilder();
$xmlBuilder->open('items');	

$orders = DataRecord::fetchRecords(sprintf('SELECT o.Order_ID, o.Order_Prefix, CONCAT_WS(\' \', o.Billing_First_Name, o.Billing_Last_Name) AS Name, p.Email, cm.Contact_ID, o.Channel_ID, o.Status, o.Created_On, o.despatchedOn, cu.Code AS Currency, ol.Product_ID, ol.Product_Title, ol.Product_SKU, ((ol.Line_Total + ol.Line_Tax - ol.Line_Discount) / ol.Quantity) AS Amount, po.Postage_Days, o.integrationFeefoProcessed
	FROM orders AS o
	INNER JOIN order_line AS ol ON ol.Order_ID=o.Order_ID
	INNER JOIN postage AS po ON po.Postage_ID=o.Postage_ID
	INNER JOIN currencies AS cu ON cu.Currency_ID=o.Currency_ID
	INNER JOIN customer AS cm ON cm.Customer_ID=o.Customer_ID
	INNER JOIN contact AS cn ON cn.Contact_ID=cm.Contact_ID
	INNER JOIN person AS p ON p.Person_ID=cn.Person_ID
	WHERE o.Channel_ID=%1$d AND o.Status=\'Despatched\' AND o.despatchedOn LIKE \'%2$s %%\' ORDER BY o.despatchedOn ASC', self::$channelId, nowDate()));

foreach($orders as $order) {

	if(($order['integrationFeefoProcessed'] == '0') && (!empty($order['Email']))) {
		$xmlBuilder->open('item');
		$xmlBuilder->add('name', $order['Name']);
		$xmlBuilder->add('email', 'webmaster@heatershop.co.uk');
		$xmlBuilder->add('date', cDatetime($order['Created_On'], shortdate));
		$xmlBuilder->add('description', $order['Product_Title']);
		$xmlBuilder->add('logon', self::$logon);
		$xmlBuilder->add('category', ($order['Order_Prefix'] == 'W') ? 'Web' : 'Telesale');
		$xmlBuilder->add('product_search_code', $order['Product_SKU']);
		$xmlBuilder->add('order_ref', $order['Order_ID']);
		$xmlBuilder->add('product_link', sprintf('http://www.heatershop.co.uk/product?pid=%1$d', $order['Product_ID']));
		$xmlBuilder->add('customer_ref', $order['Contact_ID']);
		$xmlBuilder->add('feedback_date', $order['Postage_Days']);
		$xmlBuilder->add('amount', $order['Amount']);
		$xmlBuilder->add('currency', $order['Currency']);
		$xmlBuilder->close();

		$object = new OrdersDataObject();
		object->select($order['Order_ID']);
		$object->setValue('integrationFeefoProcessed', 1);
		$object->update();
	}
}	

$xmlBuilder->close();	

write(root(sprintf('%1$s/feefo-%2$s-%3$s.xml', self::$directory, self::$channel, date('Y-m-d-H:i:s')), true), $xmlBuilder->getXml());

$file = root(sprintf('%1$s/feefo-%2$s-%3$s.xml', self::$directory, self::$channel, date('Y-m-d-H:i:s')), true);

$var = file_get_contents($file);

echo $var;
	
if($file) {
	self::sendFile(self::$ftpHost, self::$ftpUsername, self::$ftpPassword, $file);
}
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - ERROR 
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// The Definitive Guide To PHP's isset and empty -- http://kunststube.net/isset/
isset() returns TRUE if the variable exists and is not NULL // does not trigger an error if the variable does not exist
empty() returns TRUE if the variable does not exist or its value equals FALSE // does not trigger an error if the variable does not exist
// empty is nothing more and nothing less than a convenient shortcut for !isset($var) || $var == false.... the following things are considered "empty": 
// "" (an empty string); 0 (0 as an integer); 0.0 (0 as a float); "0" (0 as a string); null; false; an empty array; var $var; (a variable declared, but without a value)
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - SPRINTF
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
- Using numbered placeholders with a data $table... use only single quotes within SQL query
- Error 1065: 'Query is empty' -- Check that sprintf placeholders have been escaped in SQL -- DATE_FORMAT(ol.Created_On, \'%%Y %%m\') AS Month 
- sprintf takes two arguments sprintf(where_something=%d;', decimal_variable);
- When assigning a single string to populate a single sprintf var, use '%1$s' for the first use and '%2$s' for the second
-- If using numbered sprintf placeholders, all additional placeholders must be numbered irrespective of string (s) or decimal (d)
- Example: WHERE p.Catalogue_Number_1 LIKE \'%1$s\' AND p.Catalogue_Number_2 LIKE \'%1$s\'', $form->GetValue('commonstring');
- sprintf: DataTable will only take one strintf var as its final argument, so wrap the first query in its own sprintf using an escape:

<?php 
// note the %% escape of the first sprintf variable
$table->AddLink(sprintf("purchase_add_product.php?pid=%%s&purchaseid=%s&action=addproduct", $purchase->ID), "<img src=\"/resources/common/images/icons/16/tick.png\" alt=\"View Product\" border=\"0\">", "Product_ID"); 

// another example...
$table->AddLink(sprintf("javascript:confirmRequest('?action=remove&confirm=true&pid=%%s&cat=%d', 'Are you sure you want to remove this product from this category?');", $_REQUEST['cat']), "<img src=\"/resources/common/images/icons/16/cross.png\" alt=\"Remove\" border=\"0\">", "Product_ID");

// or just concat!
$table->AddLink("javascript:confirmRequest('telemarketing_recipients.php?action=remove&confirm=true&id=".$telemarketing->getId()."&aid=%s','Are you sure you want to remove this recipient from this telemarketing?');", "<img src=\"/resources/common/images/icons/16/cross.png\" alt=\"Remove\" border=\"0\">", "contactId");

?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - SHORT IF AND TOGGLES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// sometimes requires ordering of operators...
$form->AddOption($variantName, $variant['id'], $variant['name'] . (($variant['price'] > 0.00) ? ' (+&pound;' . $variant['price'] . ')' : ''));
?>

<?php
// true/false toggle: open if something to show
$boxOpen = !empty($documentRecords);
?>

<?php
	$form->AddField(sprintf('office_%1$d_%2$d', $extractRow['id'], $officeRow['id']), 'Office', 'checkbox', $access ? 'Y' : 'N', 'boolean', 1, 1, false);
?>

<?php

if(strlen($form->GetValue('password')) > 0 ){
	$cypher = new Cypher();
	$cypher->setValue($form->GetValue('password'));
	$cypher->encrypt();
}

$manufacturer->Name = $form->GetValue('manufacturer');
$manufacturer->URL = $form->GetValue('url');
$manufacturer->Username = $form->GetValue('username');
// assign (=) one of two results (result_1 : result_2) depending on a test ($cypher ?)
$manufacturer->Password = ($cypher) ? $cypher->getData() : $form->GetValue('password'); 
$manufacturer->Add();
?>

<?php echo ($productRow['Pallet'] && $productRow['Class'] == 14) ? ' <br /><small>(' . $productRow['Units'] . ' Per Pallet)</small>' : ''; ?>

<?php
// $commissionFlag = $object->getValue('commissionPaid') ? 'tick' : 'cross';	
?>

<!-- if there are products, show count in parentheses -->
<a href="contact_products.php?cid=<?php echo $customer->ID; ?>">
	<img src="/resources/common/images/icons/24/box.png" />
	<span>Products <?php echo !empty($productCount) ? sprintf(' (%1$d)', $productCount) : ''; ?></span>
</a>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - ARRAYS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// Indexed Arrays are arrays with a numeric index 
// Associative Arrays are arrays with named keys/index
// Multidimensional Arrays are arrays containing one or more arrays

// associative array
$settingGoogleMerchantShopIds = array('Heater Shop' => 10242222, 'Frost Protection' => 9950163, 'Trace Heating UK' => 8975495, 'Demister Shop' => 10406172, 'Underfloor Heating (UK)' => 9976628, 'Solar Trade Sales' => 7531188, 'Eco Energy Direct' => 8994552, 'Elementshop' => 432133); 

// multidimensional array
$settingImageSizes = array();
$settingImageSizes['category'] = array();
$settingImageSizes['category']['thumb'] = array('x' => 150, 'y' => 150);
$settingImageSizes['category']['standard'] = array('x' => 300, 'y' => 300);
$settingImageSizes['channel']['email'] = array('x' => 180, 'y' => 80);
$settingImageSizes['link'] = array();
$settingImageSizes['link']['standard'] = array('x' => 100, 'y' => 60);
$settingImageSizes['manufacturer'] = array();
$settingImageSizes['manufacturer']['thumb'] = array('x' => 120, 'y' => 60);
$settingImageSizes['manufacturer']['standard'] = array('x' => 180, 'y' => 90);
$settingImageSizes['product'] = array();
$settingImageSizes['product']['small'] = array('x' => 50, 'y' => 50);
$settingImageSizes['product']['thumb'] = array('x' => 100, 'y' => 100);
$settingImageSizes['product']['standard'] = array('x' => 200, 'y' => 200);
$settingImageSizes['product']['large'] = array('x' => 500, 'y' => 500);
$settingImageSizes['product']['grid'] = array('x' => 150, 'y' => 150);
$settingImageSizes['solarkit'] = array();
$settingImageSizes['solarkit']['thumb'] = array('x' => 150, 'y' => 100);
$settingImageSizes['solarkit']['standard'] = array('x' => 500, 'y' => 500);

echo count($cars) // count length of array

$age=array("Peter"=>"35","Ben"=>"37","Joe"=>"43"); // associative array of key and values

$age['Peter']="35"; // add item to associative array
$age['Ben']="37";
$age['Joe']="43";

echo "Peter is " . $age['Peter'] . " years old."; // get value associated with the 'Peter' key

/* for each item in age, print key at $i and its associated value */
foreach($age as $i=>$i_value) {
	echo "Key=" . $i . ", Value=" . $i_value;
	echo "<br>";

/* delete all items within array but leave array intact */
foreach ($array as $i=>$value) {
		unset($array[$i]);
}	

// quick dump of array values
foreach (array(1, 2, 3, 4, 5) as $v) {
		echo "$v\n";
}

/* for loop rather than usual foreach */
$array = array(1, 2);
$count = count($array);
for ($i=0; $i<$count; $i++) 

$marks = array( // multi-dimensional associative array of student subject marks
	"mohammed" => array(
		"physics" => 35,	    
		"maths" => 30,	    
		"chemistry" => 39	    
	),

	"qadir" => array(
		"physics" => 30,
		"maths" => 32,
		"chemistry" => 29
	),

	"zara" => array(
		"physics" => 31,
		"maths" => 22,
		"chemistry" => 39
	)
);

/* accessing multi-dimensional array values */
echo "Marks for mohammed in physics : " ;
echo $marks['mohammed']['physics'] . "<br />"; 
echo "Marks for qadir in maths : ";
echo $marks['qadir']['maths'] . "<br />"; 
echo "Marks for zara in chemistry : " ;
echo $marks['zara']['chemistry'] . "<br />"; 

/* two for loops to get values in 2nd dim of multi-dimensional array */
$a = array();
$a[0][0] = "a";
$a[0][1] = "b";
$a[1][0] = "y";
$a[1][1] = "z";

foreach ($a as $v1) {
	foreach ($v1 as $v2) {
			echo "$v2\n";        
			// a\n, b\n, y\n, z\n
	}
}

/* unpack values of nested array using list() */
$array = [
	[1, 2],
	[3, 4],
];

foreach ($array as list($a, $b)) {   
	echo "A: $a; B: $b\n";
} 	// A: 1; B: 2
	// A: 3; B: 4

/* modify array elements using & symbol */
$arr = array(1, 2, 3, 4);
foreach ($arr as &$value) {
	$value *= 2;
}
unset($value); // reset value reference to make unmodifiable

/* zebra striped table using modulo */
foreach($data as $key => $row) {
	$class = fmod($key, 2) ? 'even' : 'odd';
	echo '<tr class = "' . $class . '" >';
	
	foreach ($row as $cell) {
		echo "<td>$cell</td>";
	}
	
	echo "</tr>";
}

/* sorting arrays */
sort() - sort arrays in ascending order
rsort() - sort arrays in descending order
asort() - sort associative arrays in ascending order, according to the value
ksort() - sort associative arrays in ascending order, according to the key
arsort() - sort associative arrays in descending order, according to the value
krsort() - sort associative arrays in descending order, according to the key

// http://php.net/manual/en/language.types.array.php
// http://php.net/manual/en/ref.array.php 
// http://www.w3schools.com/php/php_ref_array.asp
// http://php.net/manual/en/control-structures.foreach.php
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - COUNT NUMBER OF TIMES A VALUE OCCURS IN AN ARRAY
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// I have an array named $uid. How can I check to see how many times the value "12" is in my $uid array?
$tmp = array_count_values($uid);
$cnt = $tmp[12];

// example
$array = array(1, "hello", 1, "world", "hello");
print_r(array_count_values($array));

// returns...
Array
(
	[1] => 2
	[hello] => 2
	[world] => 1
)

// array_count_values() returns an array using the values of array as keys and their frequency in array as values.
// http://php.net/manual/en/function.array-count-values.php
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - IN_ARRAY
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
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
// above example fails business logic, but produced desired result
// http://php.net/manual/en/function.in-array.php
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - FORMATTING
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// get only uniques from $quickfinds...
$uniqueQuickfinds = array_keys(array_flip($quickfinds));
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - DATE + TIME
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<!-- MySQL: Calculate months between two dates -->
PERIOD_DIFF(DATE_FORMAT(NOW(), \'%%Y%%m\'), DATE_FORMAT(e.Started_On, \'%%Y%%m\'))

<!-- Format despatchedOn into YYYY-MM-DD format -->
<span id="gts-o-est-ship-date"><?php echo date("Y-m-d", strtotime($order->despatchedOn)); ?></span>

<?php
// add two dates: in date format Y-m-d, get despatchedOn (the base) + postageDays (the increment)...
$deliveryDate = date("Y-m-d", strtotime("+" . $order->Postage->Days . " Days", strtotime($order->despatchedOn)));

// mktime
$currentMonth = date('m');
	// get and print the last 12 months...
	for($i = $currentMonth-11; $i<=$currentMonth; $i++) {
		echo '<th style="text-align: right;">' . date('M', mktime(0, 0, 0, $i, 1, date('Y'))) . '</th>';
	}

echo date('Y M', strtotime($stockRow['Month'].'-01')); 
// SQL source = DATE_FORMAT(YearMonth, \'%%Y-%%m\') AS Month ... ORDER BY Month;

if($job->Get($jobId)) {
	if(in_array($job->Status, JobCommon::getPendingStatus()) || (($job->Status == 'Completed') && (strtotime($job->completedOn)>strtotime('-1 month')))) {

?>
<?php

// AP STRING TO TIME: returns date as integer which can be compared...
$expireMonth = Setting::GetValue('password_expires');
$expiresOn = strtotime("+" . $expireMonth . " months", strtotime($session->User->PasswordValidFrom));
if($expiresOn <= strtotime(nowDate())) { // AP

?>
<?php

// INTERNET REFERENCES
echo date('Y-m-d H:i:s'); // NOW in format Y-m-d H:i:s
echo date('Y-m-d')); // today in YYYY-MM-DD format
echo date('Y-m-d', strtotime('-3 days')); // three days ago

if(strtotime(dateString) > time()) { 

$date = date("Y-m-d"); // current date
$date = strtotime(date("Y-m-d", strtotime($date)) . " +1 month"); // one month hence

$date = DataRecord::fetchValue('SELECT MAX(completedOn) FROM payment_batch');
$startDate = date('d/m/Y H:i:s', strtotime($date . ' -1 day'));

// http://www.vision.to/how-to-add-days-weeks-months-to-any-date-.php
// http://www.the-art-of-web.com/php/strtotime -- parse textual datetime description into a Unix timestamp
// http://php.net/manual/en/function.date.php -- formate a local time/date
// http://php.net/manual/en/function.mktime.php -- get unix timestamp for a date  

// ??? - debug mktime ($hour "H", $minute "i", $second "s", $month "n", $day "j", $year "Y", int $is_dst = -1 ]]]]]]]);  
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - SENDING EMAIL
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// Use Rmail.php
// See: login_forgotten_password.php 

$emailBody = sprintf('<p>Your email is: %1$s</p><p>Your password is: %2$s</p><p>Regards,<br />Webmaster, %3$s</p>', $detail['User_Name'], $decryptedPassword, $GLOBALS['COMPANY']);

	$mail = new Rmail();
	$mail->setReturnPath($GLOBALS['EMAIL_RETURN']);
	$mail->setFrom($GLOBALS['EMAIL_FROM']);
	$mail->setSubject(sprintf("%s Password Recovery", $GLOBALS['COMPANY']));				
	$mail->setHTML($emailBody);
	$mail->send(array($detail['User_Name'])); 
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - SET PAGE MEMORY
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
ini_set('memory_limit', '512M');
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - TOGGLETRUE/FALSE IN DB VIA OBJECT
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<a href="?action=googlemerchantintegration&amp;pid=<?php echo $product->ID; ?>"><img src="/resources/common/images/icons/16/<?php echo ($product->integrationGoogleMerchantAvailable) ? 'tick' : 'cross'; ?>.png"/></td></a>

<?php
if($action == 'googlemerchantintegration'){
	$product->integrationGoogleMerchantAvailable = !$product->integrationGoogleMerchantAvailable; // $product = new Product();
	$product->Update();

	redirectTo(sprintf('?pid=%d', $product->ID));
}
?>

<div class="section sectionFilled">
	<?php include('partials/box_tools.php'); ?>
	
	<h2>Google Merchant Integration</h2>

	<div class="sectionInterior"<?php echo !$boxOpen ? ' style="display: none;"' : ''; ?>>

		<table class="summaryTable">
			<tr>
				<th width="30%">Available:</th>
				<td><a href="?action=googlemerchantintegration&amp;pid=<?php echo $product->ID; ?>"><img src="/resources/common/images/icons/16/<?php echo ($product->integrationGoogleMerchantAvailable) ? 'tick' : 'cross'; ?>.png"/></td></a></td>
			</tr>
		</table>

	</div>
</div>

<?php
unset($boxOpen);
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - FORMS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php

// selectmultiple, updating multiples and return to selection view of multiples
// see elements admin/role_matrix.php

// Grouped select menu groups
$products = DataRecord::fetchRecords('SELECT p.Product_ID, p.Product_Title, p.Cache_Cost, p.Reference_ID, pr.Description
	FROM product AS p
	INNER JOIN product_reference AS pr ON pr.Reference_ID=p.Reference_ID AND pr.Parent_Reference_ID=625
	INNER JOIN product_reference AS pr2 ON pr2.Reference_ID=p.Reference_ID AND (pr2.Reference_ID=626 OR pr2.Reference_ID=627) -- <-references used for select menu groups
	WHERE p.Is_Favourite=\'Y\'
	ORDER BY Reference_ID, Product_Title');

$form->AddField('installedon', 'Installed On', 'text', ($lighting->installedOn != '0000-00-00 00:00:00') ? sprintf('%s/%s/%s', substr($lighting->installedOn, 8, 2), substr($lighting->installedOn, 5, 2), substr($lighting->installedOn, 0, 4)) : '', 'date_ddmmyyyy', 1, 10, false, 'class="datePicker"');
$form->AddField('supplyonly', 'Supply Only', 'checkbox', $lighting->supplyOnly ? 'Y' : 'N', 'boolean', 1, 1, false);
$form->AddField('survey_inflation_general', 'General Inflation', 'text', $lighting->surveyInflationGeneral, 'float', 1, 11, true, 'style="width: 50%;"');
$form->AddField('survey_peak_cost', 'Electric Peak Cost', 'text', $lighting->surveyElectricPeakCost, 'float', 1, 11, true, 'style="width: 50%;"');
$form->AddField('access_equipment_cost', 'Access Equipment Cost', 'text', $lighting->accessEquipmentCost, 'float', 1, 11, true, 'style="width: 50%;"');

for($i=0; $i<count($lighting->item); $i++) {
	$form->AddField('item_quantity_' . $i, 'Quantity', 'text', $lighting->item[$i]->quantity, 'numeric_unsigned', 1, 11, true, 'style="width: 50%;"');
	$form->AddField('item_hours_' . $i, 'Weekly Hours', 'text', $lighting->item[$i]->hours, 'float', 1, 11, true, 'style="width: 50%;"');
	$form->AddField('item_area_' . $i, 'Area', 'text', $lighting->item[$i]->area, 'paragraph', 0, 60, false, 'style="width: 50%;"');
	$form->AddField('item_wattageExisting_' . $i, 'Wattage Existing', 'text', $lighting->item[$i]->wattageExisting, 'float', 1, 11, true, 'style="width: 50%;"');
	$form->AddField('item_wattageReplacing_' . $i, 'Wattage Replacing', 'text', $lighting->item[$i]->wattageReplacing, 'float', 1, 11, true, 'style="width: 50%;"');
	$form->AddField('item_productExisting_' . $i, 'Product Existing', 'text', $lighting->item[$i]->productExisting, 'paragraph', 0, 60, false, 'style="width: 50%;"');
	// grouped...
	$form->AddField('item_productReplacing_' . $i, 'Product Replacing', 'select', $lighting->item[$i]->productReplacingId, 'numeric_unsigned', 1, 11);
	$form->AddGroup('item_productReplacing_' . $i, '626', 'One Electrical LED Fittings');
	$form->AddGroup('item_productReplacing_' . $i, '627', 'Luceco - BG Lighting');	
	$form->AddOption('item_productReplacing_' . $i, '', '');

	foreach($products as $product) {
		$form->AddOption('item_productReplacing_' . $i, $product['Product_ID'], $product['Product_Title'] . ' -- &pound;' . $product['Cache_Cost'], $product['Reference_ID']);
	}

	$form->AddField('item_price_' . $i, 'Price', 'text', $lighting->item[$i]->price, 'float', 1, 11, true, 'style="width: 50%;"');
	$form->AddField('access_equipment', 'Access Equipment Cost', 'text', $lighting->accessEquipment, 'float', 1, 11, true, 'style="width: 50%;"'); 
	$form->AddField('item_maintenancereplacement_' . $i, 'Maintenance/Replacement Cost', 'text', $lighting->item[$i]->maintenanceReplacementCost, 'float', 1, 11, true, 'style="width: 50%;"');
	$form->AddField('item_fittingreplacement_' . $i, 'Fitting Replacement Cost', 'text', $lighting->item[$i]->fittingReplacementCost, 'float', 1, 11, true, 'style="width: 50%;"');
	$form->AddField('item_labourreplacement_' . $i, 'Labour Replacement Cost', 'text', $lighting->item[$i]->labourReplacementCost, 'float', 1, 11, true, 'style="width: 50%;"');
	$form->AddField('item_sundriescost_' . $i, 'Sundries Cost', 'text', $lighting->item[$i]->sundriesCost, 'float', 1, 11, true, 'style="width: 50%;"');
}

// Example 1 - WITH PROCESS AND INSERT PARTIALS
// elements: process_product_notes.php
require_once($GLOBALS['DIR_WS_ADMIN'] . 'lib/classes/Form.php');
import('System/Framework/Object/ProductNote.php');

if($action == 'removenote') {

	$note = new ProductNoteDataObject();

	if(isset($_REQUEST['id']) && $note->select($_REQUEST['id'])) { // if select then we can just delete
		$note->delete();

		redirectTo(sprintf('?pid=%d', $product->ID));
	}
}

$formNotes = new Form();
$formNotes->AddField('confirm', 'Confirm', 'hidden', 'true', 'alpha', 4, 4);
$formNotes->AddField('form', 'Form', 'hidden', 'notes', 'alpha', 5, 5);
$formNotes->SetValue('form', 'notes'); // because we have multiple forms on this page, we need to set this form as unique
$formNotes->AddField('id', 'productNoteId', 'hidden', 'numeric_unsigned', 1, 11);
$formNotes->AddField('pid', 'productId', 'hidden', 'numeric_unsigned', 1, 11);
$formNotes->AddField('message', 'Message', 'textarea', '', 'anything', 1, 500, true, 'style="width: 100%; font-family: arial, sans-serif;" rows="2"');

if(isset($_REQUEST['confirm'])) {
	if(isset($_REQUEST['form']) && ($_REQUEST['form'] == 'notes')) { //since we have multiple forms on this page, check that we're processing this 'notes'form 
		if($formNotes->Validate()) {
			
			$note = new ProductNoteDataObject();
			$note->setvalue('productId', $product->ID);
			$note->setvalue('message', $formNotes->GetValue('message'));
			$note->setvalue('createdBy', $session->User->ID); 
			$note->insert();

			redirectTo(sprintf('?pid=%d', $product->ID));
		}
	}
}

// elements: insert_product_notes.php
$notes = DataRecord::fetchRecords(sprintf('SELECT id, productId, pn.message, CONCAT_WS(\' \', ps.Name_First, ps.Name_Last) AS createdBy 
FROM product_note AS pn
LEFT JOIN users AS u ON u.User_ID=pn.createdBy
LEFT JOIN person AS ps ON ps.Person_ID=u.Person_ID
WHERE pn.productId=%d
ORDER BY pn.createdOn DESC', $product->ID));

echo $formNotes->Open();
echo $formNotes->GetHTML('confirm');
echo $formNotes->GetHTML('form');
echo $formNotes->GetHTML('pid');

$boxOpen = true;
?>

<div class="section sectionFilled">
	<?php include('partials/box_tools.php'); ?>
	
	<h2>Product Notes</h2>

	<div class="sectionInterior"<?php echo !$boxOpen ? ' style="display: none;"' : ''; ?>>
		<table class="listTable">
			<thead>
				<tr>
					<th nowrap="nowrap">Message</th>
					<th nowrap="nowrap" width="20%">Created By</th>	
					<th nowrap="nowrap" width="16"></th>						
				</tr>
			</thead>
		</table>

		<div class="sectionRestrict">
			<table class="listTable">
				<tbody>
		
					<?php
					if(!empty($notes)) {
						foreach($notes as $note) {
							?>

							<tr>
								<td><?php echo $note['message']; ?></td>
								<td width="20%"><?php echo $note['createdBy']; ?></td>
								<td width="16"><a href="javascript:confirmRemove('product_profile.php?action=removenote&id=<?php echo $note['id']; ?>&pid=<?php echo $note['productId']; ?>');"><img src="/resources/common/images/icons/16/bin.png" alt="Remove" /></a></td>
							</tr>

							<?php
						}
					} else {
						?>

						<tr>
							<td colspan="3" align="center">No items available for viewing.</td>
						</tr>

						<?php
					}
					?>

				<tbody>
			</table>

			<br />			

			<table class="listTable">
				<tbody>
					<tr>
						<td><?php echo $formNotes->GetHTML('message'); ?></td>							
						<td width="10%"></td>
						<td width="16"><input name="add" type="image" src="/resources/common/images/icons/16/plus.png" alt="Add" onclick="redirect('product_profile.php?action=addnote&pid=<?php echo $product->ID; ?>');" /></td>
					</tr>
				</tbody>
			</table>
			<br />	
		</div>

	</div>
</div>

<?php
unset($boxOpen);

echo $formNotes->Close();

// Example 2
require_once('lib/common/app_header.php');
require_once($GLOBALS["DIR_WS_ADMIN"] . 'lib/classes/Form.php');
require_once($GLOBALS["DIR_WS_ADMIN"] . 'lib/classes/StandardForm.php');
require_once($GLOBALS["DIR_WS_ADMIN"] . 'lib/classes/StandardWindow.php');
import('System/Framework/Common/Feedback.php');
import('System/Framework/Object/Lead.php');

$session->Secure(2);	

$userRecords = DataRecord::fetchRecords(sprintf('SELECT User_ID, User_Name FROM users WHERE Is_Active=\'Y\' ORDER BY User_Name ASC'));

$form = new Form();
$form->AddField('confirm', 'Confirm', 'hidden', 'true', 'alpha', 4, 4);
$form->AddField('userId', 'User ID', 'select', '', 'numeric_unsigned', 1, 11, false);
$form->AddOption('userId', '', '');

foreach($userRecords as $userRow) {
	$form->AddOption('userId', $userRow['User_ID'], $userRow['User_Name']);
}

$form->AddField('email', 'Email', 'text', '', 'email', 1, 100, true);
$form->AddField('name', 'Name', 'text', '', 'anything', 1, 'anything', true);
$form->AddField('company', 'Company', 'text', '', 'anything', null, null, true);
$form->AddField('phone', 'Phone', 'text', '', 'telephone', null, null, true);
$form->AddField('postcode', 'Postcode', 'text', '', 'anything', 1, 150, true);
$form->AddField('notes', 'Notes', 'textarea','', 'anything', null, null, false, 'rows="5" style="width:300px"');

if(isParam('confirm')) {
	if($form->Validate()) {

		$lead = new LeadDataObject();
		$lead->setValue('userId', $form->GetValue('userId'));
		$lead->setValue('email', $form->GetValue('email'));
		$lead->setValue('name', $form->GetValue('name'));
		$lead->setValue('company', $form->GetValue('company'));
		$lead->setValue('phone', $form->GetValue('phone'));
		$lead->setValue('postcode', $form->GetValue('postcode'));
		$lead->setValue('notes', $form->GetValue('notes'));				
		$lead->insert();

		FeedbackCommon::add('Lead Submitted', null, 'bubbleFeedback');

		redirectTo();
	}
}

	if(!$form->Valid) {
		echo $form->GetError();
	}

	$page = new Page('Leads');	
	$page->Display('header');

	$window = new StandardWindow();
	$webForm = new StandardForm();

	echo $form->Open();
	echo $form->GetHTML('confirm');

	echo $window->Open();
	echo $window->AddHeader('Customer Details');
	echo $window->OpenContent();
	echo $webForm->Open();
	echo $webForm->AddRow($form->GetLabel('email'), $form->GetHTML('email'));
	echo $webForm->AddRow($form->GetLabel('name'), $form->GetHTML('name'));
	echo $webForm->AddRow($form->GetLabel('company'), $form->GetHTML('company'));
	echo $webForm->AddRow($form->GetLabel('phone'), $form->GetHTML('phone'));
	echo $webForm->AddRow($form->GetLabel('postcode'), $form->GetHTML('postcode'));
	echo $webForm->AddRow($form->GetLabel('notes'), $form->GetHTML('notes'));	
	echo $webForm->Close();
	echo $window->CloseContent();
	echo $window->Close();

	echo $window->Open();
	echo $window->AddHeader('Lead Details');
	echo $window->OpenContent();	
	echo $webForm->Open();
	echo $webForm->AddRow($form->GetLabel('userId'), $form->GetHTML('userId'));	
	echo $webForm->AddRow('', '<input type="submit" name="submit" value="Submit" class="btn" />');
	echo $webForm->Close();
	echo $window->CloseContent();
	echo $window->Close();

	echo $form->Close();	

	$page->Display('footer');

require_once('lib/common/app_footer.php'); 
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - FORMS: CHECKBOXES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php	
	// setting up the form field with data
	$days = array('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun');
	$form->AddField('postingOnDays_'.$j, $days[$j], 'checkbox', ($postage->postingOnDays & $i) ? 'Y' : 'N', 'boolean', 1, 1, false);

	// customised output (inline checkboxes)
	$html = '';
	for($j=0; $j<7; $j++) {		
		$html .= sprintf('<span class="padRight">' . $form->GetLabel('postingOnDays_'.$j) . $form->GetHTML('postingOnDays_'.$j) . '</span>');
	}	
	echo $webForm->AddRow('Days', $html);	
?>

<?php
// set test for toggle: $variant->setValue('useImage', ($form->GetValue('useimage') == 'Y'));
function update() {
	$variant = new VariantDataObject($_REQUEST['id']);	

	$form = new Form("product_variants.php");
	$form->AddField('action', 'Action', 'hidden', 'update', 'update', 6, 6);
	$form->AddField('confirm', 'Confirm', 'hidden', 'true', 'alpha', 4, 4);
	$form->AddField('id', 'ID', 'hidden', $variant->getId(), 'nuermic_unsigned', 1, 11);
	$form->AddField('name', 'Name', 'text', $variant->getValue('name'), 'paragraph', 1, 100);
	$form->AddField('useimage', 'Use Image', 'checkbox', $variant->getValue('useImage') ? 'Y' : 'N', 'boolean', 1, 1, false);
	
	if(isset($_REQUEST['confirm'])) {
		if($form->Validate()) {

			$variant->setValue('name', $form->GetValue('name'));
			$variant->setValue('useImage', ($form->GetValue('useimage') == 'Y')); // set TRUE (IF Y) else FALSE (IF NOT Y)

			$variant->update();

			redirectTo();
		}
	}
?>

<?php
// styling checkboxes - see lead search
foreach($displayColumns as $column){
	$rowHtml .= '<div style="margin: 5px 10px 5px 0; float: left; width: 200px;">';
	$rowHtml .= $form->GetHTML('c_'.$column['id']) . $form->GetLabel('c_'.$column['id']);
	$rowHtml .= '</div>';
}
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - FORMS: RADIO BUTTONS + GLOB FILENAMES VIA DIRECTORY
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// grid of radio buttoned icons - https://www.elementshop.co.uk/admin/content_class.php

// setup...
$form->AddField('icon', 'Icon', 'radio', $contentClass->getValue('icon'), 'anything', 1, 100, true);

$iconsPath = 'resources/common/images/icons/24/';
$iconsFullPath = root($iconsPath, true);
$iconsDisplayPath = root($iconsPath, false);
$icons = array();

// http://php.net/manual/en/function.glob.php
foreach(glob($iconsFullPath.'*.*') as $file) {
	$icon = substr($file, strlen($iconsFullPath), strlen($file)-strlen($iconsFullPath));
	$icons[] = $icon;

	$form->AddOption('icon', $icon, '<img src="'. $iconsDisplayPath . $icon . '" />');
}

// output...
$rowHtml = '<div style="margin: 5px 0;">';

for($i=1; $i<count($icons)+1; $i++) {
	$rowHtml .= '<div style="margin: 5px 10px 5px 0; float: left; width: 60px;">';
	$rowHtml .= $form->GetHTML('icon', $i) . $form->GetLabel('icon', $i);
	$rowHtml .= '</div>';
}

$rowHtml .= '<div style="clear: both;"></div>';
$rowHtml .= '</div>';

echo $webForm->AddRow('', $rowHtml);

?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - CHECKING + DEFENSIVE PROGRAMMING
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Security: Check valid job id before preceding... if(!isParam('jobid') || !$jobObject->select(paramInt('jobid'))) {redirectTo('job_search.php');}
- Defensive URL Arguments: Use if(isParam(...)) rather than if(isset($_REQUEST['...']))
- Can't use !empty on the result of a function - if(!empty($form->GetValue('password'))) - instead use... if(strlen($form->GetValue('password')) > 0 )

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - FORMATTING DATES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php 
// (23/09/2014) or shortdatetime (23/09/2014 16:26:50)
echo cDatetime($row['createdOn'], 'shortdate'); ?> 
<td align="right">&pound;<?php echo number_format($row['cost'], 2, '.', ','); ?></td> // £1,000.00

<?php 
// newline to <br>
echo nl2br($row['description']); 
?> 

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - VALIDATING DATE PICKER DATES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php

	$form->AddField('isredirecting', 'Is Redirecting', 'checkbox', $website->getValue('isRedirecting'), 'boolean', 1, 1, false);
	$form->AddField('sslAvailable', 'SSL Available', 'checkbox', $website->getValue('sslAvailable'), 'boolean', 1, 1, false);
	$form->AddField('sslActive', 'SSL Active', 'checkbox', $website->getValue('sslActive'), 'boolean', 1, 1, false);
	$form->AddField('sslExpiryOn', 'SSL Expires On', 'text', $website->getValue('sslExpiryOn'), 'date_ddmmyyyy', 1, 10, false, 'class="datePicker"');

	if(isParam('confirm')) {
		if($form->Validate()){
			$website->setValue('channelId', $form->GetValue('channel'));
			$website->setValue('domain', $form->GetValue('domain'));
			$website->setValue('isRedirecting', $form->GetValue('isredirecting'));
			$website->setValue('sslAvailable', ($form->GetValue('sslAvailable') == 'Y'));
			$website->setValue('sslActive', ($form->GetValue('sslActive') == 'Y'));
			$website->setValue('sslExpiryOn', sprintf('%1$s-%2$s-%3$s', substr($form->GetValue('sslExpiryOn'), 6, 4), substr($form->GetValue('sslExpiryOn'), 3, 2), substr($form->GetValue('sslExpiryOn'), 0, 2)));

			$website->update();

			redirectTo();
		}
	}
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - STRING STUFF
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// http://php.net/manual/en/function.str-pad.php
$selectedDate = $form->GetValue('year') . '-' . str_pad($form->GetValue('month'), 2, 0, STR_PAD_LEFT) . '-' . str_pad($form->GetValue('day'), 2, 0, STR_PAD_LEFT);

// http://php.net/substr
// if length is omitted, the substring starting from start until the end of the string will be returned
substr($string, $startPos, [int $length]);

// escapes aspostrophes from strings (e.g. O'Brien)
mysql_real_escape_string($this->Username)

// compare... returns < 0 if str1 is less than str2; > 0 if str1 is greater than str2, and 0 if they are equal
strcmp($str1, $str2); 

if(strcmp($data->Row['Password'], $cypher->getData()) == 0) {
}
// http://php.net/manual/en/function.strcmp.php
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - DEBUGGING
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// at top of page...
error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);

// echo on insert/update/etc queries within data object to output SQL...
echo sprintf('DELETE FROM product WHERE Product_ID=%1$d', $delete['Product_ID']) . '<br />';

debug($var); // AP function
print_r($var); // prints human-readable info about a variable
var_dump($var); // prints the datatype and value of a variable

echo "\r\n";
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| BROWSER - DEBUGGING
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

Application::log etc

javascript:document.cookie="debug=1";location.reload();
javascript:document.cookie="debugDisableCache=0";location.reload();

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - CHECK WE HAVE DATA...
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php

$orderRecords = DataRecord::fetchRecords(sprintf('SELECT o.Order_ID, o.Created_On, o.Custom_Order_No, o.Total FROM orders AS o WHERE o.Quote_ID=%d', $quote->ID));

if(!empty($orderRecords)) {
	// show stuff
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - TRUNCATE
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php 
// truncate $title after 35 characters - longtitleistoolon...
echo truncate($title, 35); 
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - ZIP
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<input type="button" name="downloadzip" value="download all documents as zip" class="btn" onclick="redirect('job_download.php?action=downloadzip&amp;jobid=<?php echo $job->ID; ?>');" />

<?php
function downloadZip(){
	$jobObject = new JobDataObject();

	if(!isParam('jobid') || !$jobObject->select(paramInt('jobid'))) {
		redirectTo('job_search.php');
	}

	$file = root(sprintf('%1$s/%2$d-documents-%3$s.zip', DEFAULT_PATH_TEMP, $jobObject->getValue('indexNumber'), time()), true);

	$zip = new ZipArchive();

	if ($zip->open($file, ZipArchive::CREATE) === TRUE) {		
		$assets = DataRecord::fetchRecords(sprintf('SELECT an.assetId, an.name FROM job_document2 AS jd
		INNER JOIN asset_name AS an ON an.id=jd.Asset_Name_ID
		WHERE jd.Job_ID=%d', $jobObject->getId()));
		
		foreach($assets as $asset) {
			$data = AssetCommon::getData($asset['assetId']);
			$zip->addFromString($asset['name'], $data);
		}

		$zip->close();

		header("Pragma: public");
		header("Expires: 0");
		header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
		header("Cache-Control: private", false);
		header("Content-Description: File Transfer");
		header("Content-Transfer-Encoding: binary");
		header("Content-Type: application/zip");
		header(sprintf("Content-Length: %s", filesize($file)));
		header(sprintf("Content-Disposition: attachment; filename=%s", sprintf('%1$s-documents.zip', $jobObject->getValue('indexNumber'))));

		readfile($file);

		unlink($file);
		
	} else {
		redirectTo('job_search.php');
	}
} 

// http://akrabat.com/php/creating-a-zip-file-with-phps-ziparchive/
// http://davidwalsh.name/create-zip-php
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - IF WITH OR TEST
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php

// (vehicleId > 0) ... has a vehicle
// $checklists = 'PPE', 'Plant', 'Vehicle'
$checklists = WorkTaskCommon::getChecklists();
	foreach($checklists as $list) {	 
		// if pass the first condition then continue without testing second... PPR and Plant pass first
		// if don't pass first condition then test the second condition... Vehicle doesn't pass first...
		if(($list != 'Vehicle') || (($list == 'Vehicle') && ($vehicleId > 0))) {
			echo sprintf('<h2>%s Condition Check</h2>', $list);
			// ...
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - TRIGGER FUNCTION VIA ONCLICK ACTION
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<!-- button... -->
<input type="button" name="pending" value="Set to Pending" class="btn" onclick="window.location.href='?action=pending&id=<?php echo $object_info['id']?>';" />		

<?php
// function...
if($action == 'pending') {
	$object->setValue('result', 'Pending');
	$object->save();	
	redirectTo(sprintf('lead_profile.php?id=%d', $object->getId()));
}
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - ACTION
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<td align="left">
	<?php				
		if($object_info['result'] == 'Pending') { ?>
			<input type="button" name="cancel" value="cancel" class="btn" onclick="window.location.href='leads.php?action=cancel&id=<?php echo $object_info['id']?>';" />
			<input type="button" name="convert" value="convert" class="btn" onclick="window.location.href='leads.php?action=convert&id=<?php echo $object_info['id']?>';" />					
	<?php
		}	
		if(in_array($object_info['result'], array('Blow Out', 'Pitch & Miss', 'Pending'))) { 
	?>					
			<input type="button" name="reappoint" value="reappoint" class="btn" onclick="window.location.href='leads.php?action=reappoint&id=<?php echo $object_info['id']?>';" />
	<?php
		}	
		if(in_array($object_info['result'], array('Blow Out', 'Pitch & Miss'))) { 
	?>		

			<input type="button" name="pending" value="Set to Pending" class="btn" onclick="window.location.href='?action=pending&id=<?php echo $object_info['id']?>';" />					
	<?php
		}
	?>
		<input type="button" name="edit" value="edit" class="btn" onclick="window.location.href='leads.php?action=edit&id=<?php echo $object_info['id']?>';" />
</td>

<?php

if($action == 'reappoint') {
	$session->Secure(3);
	reappoint();
	exit;
} elseif($action == 'cancel') {
	$session->Secure(3);
	cancel();
	exit;
} elseif($action == 'convert') {
	$session->Secure(3);
	convert();
	exit;
} elseif($action == 'edit') {
	$session->Secure(3);
	edit();
	exit;
} else {
	$session->Secure(2);
	view();
	exit;
}

	$table->AddLink("?action=edit&id=%s", "<img src=\"/resources/common/images/icons/16/wrench-screwdriver.png\" alt=\"Update\" border=\"0\">", "id");
	$table->AddLink("?action=reappoint&id=%s", "<img src=\"/resources/common/images/icons/16/clock-history.png\" alt=\"Reappoint\" border=\"0\">", "id", false, false, array('result', '!=', 'Reappointed'));
	$table->AddLink("lead_profile.php?id=%s", "<img src=\"/resources/common/images/icons/16/folder-horizontal-open.png\" alt=\"Open\" border=\"0\">", "id");
	$table->AddLink("?action=cancel&id=%s", "<img src=\"/resources/common/images/icons/16/cross.png\" alt=\"Cancel\" border=\"0\">", "id", false, false, array('result', '==', 'Pending'));
	$table->AddLink("?action=convert&id=%s", "<img src=\"/resources/common/images/icons/16/tick.png\" alt=\"Convert\" border=\"0\">", "id", false, false, array('result', '==', 'Pending'));
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - SCW DATE + PROCESS PHP DATE FOR SQL INSERTION (using sprintf)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// example 1
$form->AddField('date', 'Date', 'text', date('d/m/Y'), 'date_ddmmyyy', 0, 10, true, 'onclick="scwShow(this, this);" onfocus="scwShow(this, this);"');

$selectedDate = date('Y-m-d 00:00:00', mktime(0, 0, 0, substr($form->GetValue('date'), 3, 2), substr($form->GetValue('date'), 0, 2), substr($form->GetValue('date'), 6, 4)));

echo $webForm->AddRow($form->GetLabel('date'), $form->GetHTML('date').$form->GetIcon('date'));

// form output: 02/01/2015
// after processing: 2015-01-02 00:00:00
// if only want: 2015-01-02...
// $selectedDate = date('Y-m-d', mktime(0, 0, 0, substr($form->GetValue('date'), 3, 2), substr($form->GetValue('date'), 0, 2), substr($form->GetValue('date'), 6, 4)));
?>

<?php
// example 2
$form->AddField('generatedOnDate', 'Generated On Date', 'text', date('d/m/Y'), 'date_ddmmyyy', 0, 10, true, 'onclick="scwShow(this, this);" onfocus="scwShow(this, this);"');

$generatedOn = (strlen($form->GetValue('generatedOnDate')) > 0) ? sprintf('%s-%s-%s', substr($form->GetValue('generatedOnDate'), 6, 4), substr($form->GetValue('generatedOnDate'), 3, 2), substr($form->GetValue('generatedOnDate'), 0, 2)) : '0000-00-00';
?>



+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - LENGTH
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// test for existence of string...
if(strlen($form->GetValue('Job_Number')) > 0) {}

new DataQuery(sprintf('UPDATE job SET jobLinkedId=%1$d WHERE jobLinkedId=%2$d', $job->jobLinkedId, $jobLinked->getValue('jobLinkedId'))); 
// %1$d first decimal; %2$d second decimal
// %1$s first string; %2$s second string
// %1$s first placeholder; %2$d second placeholder
// http://php.net/manual/en/function.sprintf.php

// use AP custom function (startsWith) instead of substr
if(substr($key, 0, 8) == 'approval2') {
	$job->officeCommission2Approved = !$job->officeCommission2Approved;
}

if(startsWith($key, 'new_commission_1')) {							 
	$job->officeCommission1 = $value;
}
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - HASHING
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- When hashing data (eg. when using $csvHash), make sure that it's unique - add a unique var ($period) to avoid duplicated hashes: $csvHash = md5($period.$csvData);
- $csv->addHeader('header'); ... $csvRow = array(); ... $csv->addRow($csvRow); ... $csv->compile(); // addRow creates a matrix by using the number of addHeaders
-- For CSV example, see: http://dev.elementshop.co.uk/portal/manufacturer/monitor_sales.php

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - GET DATA FROM CSV FILE
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php

$data = new CsvParser();
	$data->setFieldNames(False);
	$data->setData(file_get_contents($fileContent->filePath));
	$data->parse();
	$rows = $data->getRows();

public static function getEstimatedDeliveryDate($postageId, $dateTime = null) {

	$dateTime = !is_null($dateTime) ? $dateTime : now();

	while(true) {
		$dayIndex = date('N', strtotime($dateTime));

		if($dayIndex < 6) {
			break;
		}	

		$dateTime = date('Y-m-d', strtotime('+1 day', strtotime($dateTime)));
	}

	$postage = new PostageDataObject();
	$postage->select($postageId);

	$counter = $postage->getValue('days'); 

	while($counter > 0) {

		$dateTime = date('Y-m-d', strtotime('+1 day', strtotime($dateTime)));
		$dayIndex = date('N', strtotime($dateTime)); 	

		echo '$dayIndex: ' . $dayIndex . '<br />';
		echo '$dateTime: ' . $dateTime . '<br />';
					
		if($postage->getValue('postingOnDays') & pow(2, $dayIndex-1)) { 
			$counter--;
		}			
	}

	return $dateTime;
}
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - MATRIX (Array of arrays) using foreach loop
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
require_once('lib/common/app_header.php');
require_once($GLOBALS['DIR_WS_ADMIN'] . 'lib/classes/DataQuery.php');
require_once($GLOBALS["DIR_WS_ADMIN"] . 'lib/classes/Form.php');
require_once($GLOBALS["DIR_WS_ADMIN"] . 'lib/classes/StandardForm.php');
require_once($GLOBALS["DIR_WS_ADMIN"] . 'lib/classes/StandardWindow.php');

import('System/Framework/Object/ExtractOffice.php');

$form = new Form();
$form->AddField('confirm', 'Confirm', 'hidden', 'true', 'alpha', 4, 4);

$officeRecords = DataRecord::fetchRecords(sprintf('SELECT id, name FROM office ORDER BY name ASC'));
$extractRecords = DataRecord::fetchRecords(sprintf('SELECT id, name FROM extract ORDER BY name ASC'));
$officeExtractRecords = DataRecord::fetchRecords(sprintf('SELECT extractId, officeId FROM extract_office'));

foreach($extractRecords as $extractRow) {
	foreach($officeRecords as $officeRow) {
		$access = false;
		
		foreach($officeExtractRecords as $officeExtractRow) {
			if(($officeExtractRow['officeId'] == $officeRow['id']) && ($officeExtractRow['extractId'] == $extractRow['id'])) {
				$access = true;
				break;
			}
		}

		$form->AddField(sprintf('office_%1$d_%2$d', $extractRow['id'], $officeRow['id']), 'Office', 'checkbox', $access ? 'Y' : 'N', 'boolean', 1, 1, false);
	}
}

if(isParam('confirm')) {
	if(isParam('update')) {
		if($form->Validate()) {
			foreach($extractRecords as $extractRow) {
				foreach($officeRecords as $officeRow) {
					$access = false;
			
					foreach($officeExtractRecords as $officeExtractRow) {
						if(($officeExtractRow['officeId'] == $officeRow['id']) && ($officeExtractRow['extractId'] == $extractRow['id'])) {
							$access = true;
							break;
						}
					}

					$key = sprintf('office_%1$d_%2$d', $extractRow['id'], $officeRow['id']);

					$office = new ExtractOfficeDataObject();
					$office->setValue('extractId', $extractRow['id']);
					$office->setValue('officeId', $officeRow['id']);

					if(($form->GetValue($key) == 'Y') && !$access) {
						$office->insert();

					} elseif(($form->GetValue($key) == 'N') && $access) {
						if($office->selectBy('officeId, extractId')) {
							$office->delete();
						}
					}
				}
			}
			
			redirectTo();
		}
	} else {
		redirectTo();
	}
}

$page = new Page('Extract Offices');
$page->Display('header');

if(!$form->Valid) {
	echo $form->GetError();
}

echo $form->Open();
echo $form->GetHTML('confirm');

$window = new StandardWindow();
$webForm = new StandardForm();
?>

<div class="list">
	<table class="listTable">
		<thead>
			<tr>
				<th></th>

				<?php
				foreach($officeRecords as $officeRow) {
					echo sprintf('<th style="text-align: center;">%1$s</th>', $officeRow['name']);
				}
				?>
			<tr>
		</thead>
		<tbody>

			<?php
			foreach($extractRecords as $extractRow) {
				?>

				<tr>
					<td><?php echo $extractRow['name']; ?></td>

					<?php
					foreach($officeRecords as $officeRow) {
						echo sprintf('<td align="center">%1$s</td>', $form->GetHTML(sprintf('office_%1$d_%2$d', $extractRow['id'], $officeRow['id'])));
					}
					?>

				</tr>

				<?php
			}
			?>
		</tbody>
	</table>
</div>

<input type="submit" name="update" value="update" class="btn" tabindex="<?php echo $form->GetTabIndex(); ?>" />

<?php
echo $form->Close();

$page->Display('footer');

?>

<?php 
require_once('../System/Header.php');

function outputCategories($parentId=0, $indent=0){
	$records = DataRecord::fetchRecords(sprintf('SELECT Category_Title, Category_ID FROM product_categories WHERE Category_Parent_ID=%d ORDER BY Category_Title ASC', $parentId));

	foreach($records as $record){
	?>	
		<tr>
			<td style="border-bottom: 1px dotted #ccc; padding: 5px 0 5px 0"><?php echo $record['Category_ID']; ?></td>
			<td style="border-bottom: 1px dotted #ccc; padding: 5px 0 5px <?php echo $indent*20; ?>px;"><?php echo $record['Category_Title']; ?></td>
		</tr>

		<?php
		outputCategories($record['Category_ID'], $indent+1);
	} 	
}
?>

<div class="list">
	<table class="listTable">
		<thead>
			<tr>
				<td style="border-bottom:1px solid #aaa; padding: 5px 0;" align="left">Category ID</td>	
				<td style="border-bottom:1px solid #aaa; padding: 5px 0;" align="left">Category Title</td>	
			</tr>
		</thead>
		<tbody>
			<?php outputCategories(); ?>
		</tbody>
	</table>
</div>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - RECURSIVE FUNCTION
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php 
require_once('../System/Header.php');

function outputCategories($parentId=0, $indent=0){
	$records = DataRecord::fetchRecords(sprintf('SELECT Category_Title, Category_ID FROM product_categories WHERE Category_Parent_ID=%d ORDER BY Category_Title ASC', $parentId));

	foreach($records as $record){
	?>
		<tr>
			<td style="border-bottom: 1px dotted #ccc; padding: 5px 0 5px 0"><?php echo $record['Category_ID']; ?></td>
			<td style="border-bottom: 1px dotted #ccc; padding: 5px 0 5px <?php echo $indent*20; ?>px;"><?php echo $record['Category_Title']; ?></td>
		</tr>

		<?php
		outputCategories($record['Category_ID'], $indent+1);
	}
}
?>

<div class="list">
	<table class="listTable">
		<thead>
			<tr>
				<td style="border-bottom:1px solid #aaa; padding: 5px 0;" align="left">Category ID</td>
				<td style="border-bottom:1px solid #aaa; padding: 5px 0;" align="left">Category Title</td>
			</tr>
		</thead>
		<tbody>
			<?php outputCategories(); ?>
		</tbody>
	</table>
</div>


+++
HTML OUTPUT 

Category ID	Category Title
1247		www.demistershop.co.uk
1251			Mist Free Mirrors
1429		www.ecoenergydirect.co.uk
1431			Categories
1687				Drives
1689					HVAC Variable Speed Drives
1563				Lighting
1639					Compact Fluorescent Lamps
1641						Compact Fluorescent GU10 Fire Rated Downlights
1643					Downlights
1659						Commercial Downlights
1661							LED Commercial Downlights
1653						Emergency Downlights
1645						Fire Rated Downlights
1651							Compact Fluorescent GU10 Fire Rated Downlights
1649							LED Fire Rated Downlights
1647							LED GU10 Fire Rated Downlights
1657						LED GU10 Downlights
1655						Slimline Downlights

<?php
// another recursive example
function outputCategories($parentCategoryId, $level = 0) {
	$categoryRecords = DataRecord::fetchRecords(sprintf('SELECT Category_ID, Category_Title, Meta_Title
		FROM product_categories
		WHERE Is_Active=\'Y\'AND Category_Parent_ID=%1$d
		ORDER BY Category_Title ASC', $parentCategoryId));

	if(!empty($categoryRecords)) {
		if($level > 0) {
			echo '<li class="sub">';
		}

		echo '<ul>';

		foreach($categoryRecords as $categoryRow) {
			echo sprintf('<li class="sub"><a href="%1$s" title="%2$s">%3$s</a></li>', ProductCategoryCommon::getUrl($categoryRow['Category_ID']), $categoryRow['Meta_Title'], $categoryRow['Category_Title']);

			$productRecords = DataRecord::fetchRecords(sprintf('SELECT p.Product_ID, p.Product_Title, p.Meta_Title
				FROM product AS p
				INNER JOIN product_in_categories AS pic ON pic.Product_ID=p.Product_ID AND pic.Category_ID=%1$d
				WHERE pic.Category_ID=%1$d AND p.Is_Active=\'Y\' AND p.Discontinued=\'%2$s\'%3$s
				ORDER BY p.Product_Title ASC', $categoryRow['Category_ID'], ($discontinued) ? 'Y' : 'N', ($discontinued) ? ' AND p.Superseded_By=0' : ''));

			if(!empty($productRecords)) { 
				echo '<li class="sub">';
				echo '<ul>';

				foreach($productRecords as $productRow) {
					echo sprintf('<li><a href="%1$s" title="%2$s">%3$s</a></li>', ProductCommon::getUrl($productRow['Product_ID']), $productRow['Meta_Title'], strip_tags($productRow['Product_Title']));
				}	
		 
				echo '</ul>';
				echo '</li>';
			}
			
			outputCategories($categoryRow['Category_ID'], $level+1);
		}
	
		echo '</ul>';

		if($level > 0) {
			echo '</li>';
		}
	}
}
?>

<?php
// See: cjec/admin/case_studies.php: 

function getServices($form, $parentId=0, $indent=0) {
	$services = DataRecord::fetchRecords(sprintf('SELECT s.id, s.name, c.Name AS Channel
		FROM service AS s
		LEFT JOIN channel AS c ON c.Channel_ID=s.channelId
		WHERE s.parentId=%d 
		ORDER BY s.name ASC', $parentId));

	foreach($services as $service) {		
		$form->AddOption('serviceId', $service['id'], ($service['Channel']) ? $service['Channel'] . ': ' . $service['name'] : '' . str_repeat("---", $indent) . ' ' . $service['name']);
		getServices($form, $service['id'], $indent+1);
	}
}

function edit() {
	$caseStudy = new CaseStudyDataObject();

	if(isParam('id') && (paramInt('id') > 0)) {
		if(!$caseStudy->select(paramInt('id'))) {
			redirectTo();
		}
	}

	$form = new Form();
	$form->AddField('action', 'Action', 'hidden', 'edit', 'alpha', 4, 4);
	$form->AddField('confirm', 'Confirm', 'hidden', 'true', 'alpha', 4, 4);
	$form->AddField('id', 'ID', 'hidden', '', 'numeric_unsigned', 1, 11, false);
	$form->AddField('jobId', 'Job ID', 'text', $caseStudy->getValue('jobId'), 'anything', 0, 10);
	$form->AddField('description', 'Description', 'textarea', $caseStudy->getValue('description'), 'paragraph', 1, 1000, true, 'rows="5" style="width: 500px;"');
	$form->AddField('serviceId', 'Service', 'select', $caseStudy->getValue('serviceId'), 'numeric_unsigned', 1, 11);
	$form->AddOption('serviceId', '', '');

	getServices($form);	

	if(isParam('confirm')) {
		if($form->Validate()) {
			$caseStudy->setValue('jobId', $form->GetValue('jobId'));
			$caseStudy->setValue('serviceId', $form->GetValue('serviceId'));
			$caseStudy->setValue('description', $form->GetValue('description'));
			$caseStudy->save();

			redirectTo();
		}
	}

	// more...

?>

SELECT id, name FROM service WHERE parentId=0 ORDER BY name ASC;
  SELECT id, name FROM service WHERE parentId=42 ORDER BY name ASC;
	-- 8
	-- 1
	-- 3
	-- 10

  SELECT id, name FROM service WHERE parentId=44 ORDER BY name ASC;
	-- 29
	-- 31
	-- 27
	-- 26
	-- 30
	-- 28

  SELECT id, name FROM service WHERE parentId=41 ORDER BY name ASC;
	SELECT id, name FROM service WHERE parentId=17 ORDER BY name ASC;
	  -- 37
	  -- 39
	  -- 35
	SELECT id, name FROM service WHERE parentId=16 ORDER BY name ASC;
	  -- 33
	  -- 32
	  -- 38
	SELECT id, name FROM service WHERE parentId=12 ORDER BY name ASC;
	  -- 22
	  -- 21
	SELECT id, name FROM service WHERE parentId=36 ORDER BY name ASC;
	SELECT id, name FROM service WHERE parentId=14 ORDER BY name ASC;
	SELECT id, name FROM service WHERE parentId=34 ORDER BY name ASC;
	SELECT id, name FROM service WHERE parentId=19 ORDER BY name ASC;
	SELECT id, name FROM service WHERE parentId=46 ORDER BY name ASC;
	SELECT id, name FROM service WHERE parentId=18 ORDER BY name ASC;
	  -- 45
	SELECT id, name FROM service WHERE parentId=13 ORDER BY name ASC;
	SELECT id, name FROM service WHERE parentId=20 ORDER BY name ASC;

  SELECT id, name FROM service WHERE parentId=43 ORDER BY name ASC;


+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - ARRAY TO URL QUERY STRING
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php

$arr = array();
	// loop through $this->data
	foreach($this->data as $key => $value){
			// assign as an item of $arr (field=value)
			$arr[] = $key . '='. urlencode($value);
	}

	// implode the array using & as the glue and store the data
	$this->curl_str = implode('&', $arr);
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - NEW LINE CHARACTER
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------  

<?php	

	foreach ($rows as $row) {
	echo $row['3'] . "\n";
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - ERROR REPORTING
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------  

error_reporting(E_ALL);
ini_set('display_errors', 1);

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - LOGIC
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// exists or is not false/0
if(!empty($var)) {} 
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP: CSV
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// http://dev.elementshop.co.uk/System/API/Stock/listStockSolar.php
require_once('../../Header.php');
import('System/Library/Csv/Writer.php');

$warehouseId = 15; // CJ Solar (Ipswich)

$records = DataRecord::fetchRecords(sprintf('SELECT p.Product_ID, p.Product_Title, p.SKU, IF(ws.Quantity_In_Stock IS NOT NULL, ws.Quantity_In_Stock, 0) AS Quantity_In_Stock
	FROM warehouse_stock AS ws
	LEFT JOIN product AS p ON p.Product_ID=ws.Product_ID
	WHERE ws.Warehouse_ID=%d', $warehouseId));

if(!empty($records)) {
	$csv = new CsvWriter();

	$csv->addHeader('Quick Find');
	$csv->addHeader('Product Title');
	$csv->addHeader('SKU');
	$csv->addHeader('Stock Qty');

	foreach($records as $row) {
		$csvRow = array();
		$csvRow[] = $row['Product_ID'];
		$csvRow[] = $row['Product_Title'];
		$csvRow[] = $row['SKU'];
		$csvRow[] = $row['Quantity_In_Stock'];

		$csv->addRow($csvRow);
	}

	$csv->compile();

	$csvData = $csv->getData();

	echo $csvData;
}
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP + JS - GET ADDRESS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// see elements... telemarketing_schedule.php
$script = sprintf('<script>
	function getAddress() {
		var country = document.getElementById(\'country\');

		if(country) {
			propogateRegions(\'region\', country);
			Address.find(document.getElementById(\'postcode\'));
		}
	}

	Address.account = \'%s\';
	Address.licence = \'%s\';

	Address.add(\'postcode\', \'line1\', \'address2\');
	Address.add(\'postcode\', \'line2\', \'address3\');
	Address.add(\'postcode\', \'line3\', null);
	Address.add(\'postcode\', \'city\', \'city\');
	Address.add(\'postcode\', \'county\', \'region\');
</script>', $GLOBALS['POSTCODEANYWHERE_ACCOUNT'], $GLOBALS['POSTCODEANYWHERE_LICENCE']);
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP - GET ENUM VALUES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php 

class WorkTaskCommon {
	public static function getChecklists() {
		$checklistsTypes = array();

		// returns enum('Vehicle','PPE','Plant')
		$checklists = DataRecord::fetchValue(sprintf('SELECT COLUMN_TYPE 
			FROM INFORMATION_SCHEMA.COLUMNS
			WHERE TABLE_NAME = \'work_task_checklist\' AND COLUMN_NAME = \'type\''));

		// returns Array ( [0] => Vehicle [1] => PPE [2] => Plant )
		$checklistsTypes = explode(",", str_replace("'", "", substr($checklists, 5, (strlen($checklists)-6))));

		return $checklistsTypes;
	}
}

// https://jadendreamer.wordpress.com/2011/03/16/php-tutorial-put-mysql-enum-values-into-drop-down-select-box/
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP/MYSQL - SWITCH CASE BASED IMAGE SELECTION
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
$table = new DataTable('trans');
$table->SetSQL(sprintf('SELECT *, CASE fraudScreenResult WHEN \'OK\' THEN \'tick-shield\' WHEN \'HOLD\' THEN \'exclamation-shield\' WHEN \'REJECT\' THEN \'cross-shield\'  ELSE \'shield\' END 
	AS fraudFlag FROM payment WHERE Order_ID=%d', $order->ID));
$table->AddField('ID', 'Payment_ID', 'left');
$table->AddField('Type', 'Transaction_Type', 'left');
$table->AddField('Status', 'Status', 'left');
$table->AddField('Detail', 'Status_Detail', 'left');
$table->AddField('Reference', 'Reference', 'left');
$table->AddField('Amount', 'Amount', 'right');
$table->AddField('Fraud Flag', 'fraudFlag', 'center', '<img src="/resources/common/images/icons/16/%1$s.png" />', array('fraudScreenResult', '!=', ''));
$table->AddField('Fraud Score', 'fraudTotalScore', 'right');
$table->AddField('Fraud Status', 'fraudScreenResult', 'left');
$table->AddLink("order_fraud.php?pid=%d&orderid=".$order->ID, "<img src=\"/resources/common/images/icons/16/magnifier.png\" alt=\"Fraud\" border=\"0\">", 'Payment_ID');
$table->SetMaxRows(25);
$table->SetOrderBy("Payment_ID");
$table->Order= "desc";
$table->Finalise();
$table->DisplayTable();
echo '<br />';
$table->DisplayNavigation(); 
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHP/MYSQL - INSERT SELECT - INSERT USING SELECT - MAKE DUPLICATE USING RECORDS FROM THE SAME TABLE
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO registry_permissions (Modified_By, Modified_On, Created_By, Created_On, Access_ID, Permission_ID, Registry_ID) (SELECT Modified_By, Modified_On, Created_By, Created_On, 25, Permission_ID, Registry_ID FROM registry_permissions WHERE Access_ID=15); // Omitting Primary Key (Registry_Permission_ID) from both selects so that values are auto-incremented... 

<?php

function duplicate(){
	$shipping = new ShippingClassDataObject();

	if(!isParam('class') || !$shipping->select(paramInt('class'))) {
		redirect("Location: shipping_classes.php");
	}

	// duplicate class (tbl: shipping_class)
	$duplicate = new ShippingClassDataObject();
	$duplicate->setValue('name', $shipping->getValue('name')); 
	$duplicate->setValue('isDefault', $shipping->getValue('isDefault')); 
	$duplicate->setValue('isPallet', $shipping->getValue('isPallet')); 
	$duplicate->setValue('createdOn', $shipping->getValue('createdOn'));
	$duplicate->setValue('createdBy', $shipping->getValue('createdBy')); 
	$duplicate->setValue('modifiedOn', $shipping->getValue('modifiedOn')); 
	$duplicate->setValue('modifiedBy', $shipping->getValue('modifiedBy'));
	$duplicate->insert(); 

	// duplicate class items (tbl: shipping)
	if($duplicate->getId()) {

		$data = new DataQuery(sprintf('INSERT INTO shipping (Shipping_Class_ID, Geozone_ID, Postage_ID, Over_Order_Amount, Weight_Threshold, costPerItem, costPerDelivery, costPerAdditionalKilo, Per_Item, Per_Delivery, Per_Additional_Kilo, unavailable, Created_On, Created_By, Modified_On, Modified_By)
			SELECT %1$d, Geozone_ID, Postage_ID, Over_Order_Amount, Weight_Threshold, costPerItem, costPerDelivery, costPerAdditionalKilo, Per_Item, Per_Delivery, Per_Additional_Kilo, unavailable, Created_On, Created_By, Modified_On, Modified_By
			FROM shipping
			WHERE Shipping_Class_ID=%2$d', $duplicate->getId(), $shipping->getId())); 

		$data->Disconnect();

		redirectTo('shipping.php?class=' . $duplicate->getId());
	}

	redirectTo();
}

?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - CASE SENSITIVITY
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

> For both the normal comparison (=) and the SQL pattern matching (LIKE) the behaviour depends on the fields that are involved:
> a. CHAR, VARCHAR, and all variants of TEXT fields do compare case insensitive.
> b. CHAR BINARY, VARCHAR BINARY and all variants of BLOB fields do compare case sensitive.
> If you compare a field from (a) with a field from (b), then the comparison will be case sensitive (case sensitivity wins)
> See chapter "7.2.7 String types" of the MySQL Reference Manual and look for the statements on sorting and comparisons.
> Starting with V3.23.0 it's also possible to force a comparison into case sensitivity with the cast operator BINARY, independent of the types of involved fields. 
> See chapter "7.3.7 Cast operators" of the MySQL Reference Manual.
> So you also might change the type of user_name, or with V3.23.x try something like:
> SELECT phone FROM user WHERE BINARY username LIKE '%term%';
- http://dba.stackexchange.com/questions/15250/how-to-do-a-case-sensitive-search-in-where-clause

SELECT 'abc' LIKE 'ABC' // LIKE is case insensitive, returns 1
SELECT 'abc' LIKE BINARY 'ABC' // LIKE BINARY is case sensitive, returns 0

- http://stackoverflow.com/questions/5629111/how-can-i-make-sql-case-sensitive-string-comparison-on-mysql

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - IF AND (Y/N) ALIAS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM job WHERE IF(solarImmersun=1 OR solarIboost=1, 1, 0)<>solarHotwater; // If(cond, return true, return false)
SELECT o.Order_ID, o.Created_On, IF(o.Custom_Order_No = '', 'N/A', o.Custom_Order_No) AS Custom_Order_No FROM orders AS o; 

<?php

$table = new DataTable();
	$table->SetSQL(sprintf('SELECT l.*, IF(l.printAvailable, \'Yes\', \'No\') AS printAvailableFlag, IF(l.active, \'Yes\', \'No\') AS activeFlag, c.Name AS channel, o.name AS office
		FROM literature AS l
		LEFT JOIN channel AS c ON c.Channel_ID=l.channelId
		LEFT JOIN office AS o ON o.id=l.officeId'));
	$table->AddField(null, 'pdfAssetNameId', 'hidden');
	$table->AddField(null, 'imageAssetNameId', 'hidden');
	$table->AddField('ID', 'id');
	$table->AddField('Preview', 'id', 'center', '<a href="?action=preview&id=%1$d" target="_blank"><img src="?action=preview&id=%1$d&y=25" /></a>', array('imageAssetNameId', '>', 0));
	$table->AddField('Name', 'name');
	$table->AddField('Size', 'size');
	$table->AddField('Cost', 'cost', 'right');
	$table->AddField('Print Available', 'printAvailableFlag', 'center');
	$table->AddField('Active', 'activeFlag', 'center');	       

?>	    

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - FIND COLUMNS IN DATABASE
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------- 

<?php
// when support tables and their columns are known
$productTables = DataRecord::fetchRecords(sprintf('SELECT DISTINCT TABLE_NAME
	FROM INFORMATION_SCHEMA.COLUMNS
	WHERE COLUMN_NAME IN (\'Product_ID\',\'productId\')
		AND TABLE_SCHEMA=\'cjec\''));

// when support tables and their columns are unknown
$productTables = DataRecord::fetchRecords(sprintf('SELECT DISTINCT TABLE_NAME, COLUMN_NAME 
	FROM information_schema.KEY_COLUMN_USAGE 
	WHERE REFERENCED_TABLE_NAME IS NOT NULL 
		AND REFERENCED_TABLE_NAME=\'product\' 
			AND REFERENCED_COLUMN_NAME=\'Product_ID\' 
				AND TABLE_SCHEMA=\'cjec\''));
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - LEFT JOIN TO EXCLUDE / GET NULLS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

// left join table, want those records other than matches in left joined table, so, WHERE di.despatchId IS NULL, null because nulls are created where DON'T match

SELECT d.Despatch_ID
FROM despatch AS d
LEFT JOIN despatch_integration AS di ON di.despatchId=d.Despatch_ID
INNER JOIN orders AS o ON o.Order_ID=d.Order_ID
INNER JOIN warehouse AS w ON d.Despatch_From_ID=w.Warehouse_ID AND w.Type='B'
WHERE di.despatchId IS NULL AND d.Courier_ID=5 AND d.Created_On > '2015-07-27 00:00:00' AND d.Courier_Consignment='' AND d.Weight > 0 AND d.Weight/d.Boxes <= 30
ORDER BY d.Created_On DESC;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - FOREIGN KEY
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

// make sure referencing id columns are nullable and default NULL, otherwise default will be 0 and there cannot be 0 ids in referenced table

// create fk to parent in child
ALTER TABLE lead 
ADD FOREIGN KEY (userId) 
REFERENCES users (User_ID)
ON UPDATE CASCADE // if parent is updated, cascade changes down to child
ON DELETE SET NULL; // if parent is updated, set child (pk/fk field) to null

// user-named fk to parent in child - fkname must be unique
ALTER TABLE payment_fraud
ADD FOREIGN KEY FK_payment_fraud_1(paymentID) 
REFERENCES payment (Payment_ID) 
ON DELETE CASCADE // if parent is deleted, delete child
ON UPDATE CASCADE;  // if parent is updated, cascade changes to child (pk/fk field)  

// if you don't offer fk name, sql will create a unique one
ALTER TABLE child_tbl
ADD FOREIGN KEY(Product_ID) 
REFERENCES parent_tbl (col_name) -- tablename (column)
ON DELETE SET NULL  // if parent is updated, set child (pk/fk field) to null
ON UPDATE CASCADE; // if parent is updated, cascade changes to child (pk/fk field)  

// Commonly-used Constraints
- ON UPDATE CASCADE ON DELETE RESTRICT // if parent is updated, cascade changes down to child; if parent is deleted, deny the deletion (save parent and child)

// Errors
- Causes and Solutions for errno 150
- Data Types Don't Match
- Parent Columns Not Indexed (Or Indexed in Wrong Order)
- Column Collations Don't Match
- Using SET NULL on a NOT NULL Column
- Table Collations Don't Match
- Parent Column Doesn't Actually Exist In Parent Table
- One of the indexes on one of the columns is incomplete (column is too long)
- FK failed... bc SELECT * FROM job WHERE !ISNULL(officeCommissionInvoiceId); // ADD COLUMN NOT NULL resulted in table being populated with zeros!
- When adding a foreign key constraint to a table using ALTER TABLE, remember to create the required indexes first.
-- Make sure foreign key and foreign reference have exactly the same data definitions:
--- Corresponding columns in the foreign key and the referenced key must have similar data types.
--- The size and sign of integer types must be the same.
-- Referencing Options: RESTRICT | CASCADE | SET NULL | NO ACTION
--- RESTRICT: Rejects the delete or update operation for the parent table. Specifying RESTRICT (or NO ACTION) is the same as omitting the ON DELETE or ON UPDATE clause.
---- (For an ON DELETE or ON UPDATE that is not specified, the default action is always RESTRICT)
--- CASCADE: ON DELETE CASCADE and ON UPDATE CASCADE Delete or update the row from the parent table, and automatically delete or update the matching rows in the child.
--- SET NULL: ON DELETE SET NULL and ON UPDATE SET NULL. Delete or update the row from the parent table, and set the foreign key column or columns in the child to NULL. 
---- (If you specify a SET NULL action, make sure that you have not declared the columns in the child table as NOT NULL.)
--- NO ACTION: A keyword from standard SQL. In MySQL, equivalent to RESTRICT. 
--- SET DEFAULT: Recognized by the MySQL parser, but both InnoDB and NDB reject table definitions containing ON DELETE SET DEFAULT or ON UPDATE SET DEFAULT 

- http://www.eliacom.com/mysql-gui-wp-errno-150.php // MySQL errno 150; MySQL errno 121; 
- http://dev.mysql.com/doc/refman/5.5/en/innodb-error-codes.html
- http://dev.mysql.com/doc/refman/5.6/en/create-table-foreign-keys.html

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - GET ORPHANED FOREIGN KEYS (COL VALUES THAT EXIST IN CHILD BUT NOT IN PARENT)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT dl.Debit_Line_ID, dl.Product_ID
FROM debit_line AS dl // child table
LEFT JOIN product AS p ON p.Product_ID=dl.Product_ID // parent table
WHERE p.Product_ID IS NULL; // get the dl.ids where p.pid = NULL

OR

SELECT `child_table`.`child_column` from `child_table` where `child_table`.`child_column` IS NOT NULL AND NOT EXISTS (SELECT * FROM `parent_table` WHERE `parent_table`.`parent_column`=`child_table`.`child_column`);

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - ORDER BY 
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- ORDER BY ol.Product_Title ASC, ol.Created_On; // Order first by Product_Title ASC, then by ol.Created_On
- http://stackoverflow.com/questions/4876100/mysql-query-order-by-multiple-items

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - TRUNCATE (DELETE * FROM)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- TRUNCATE TABLE tbl_name
- https://dev.mysql.com/doc/refman/5.0/en/truncate-table.html

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - (FLAG OLD ENTRIES)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
SELECT * FROM estimate AS e
WHERE e.Status='Unsuccessful';

-- IF estimate date is over 18 months then set flag to unsuccessful

SELECT * FROM estimate AS e
WHERE ADDDATE(NOW(), INTERVAL -18 MONTH) > e.Created_On;

function unsuccessful() {
	$oldEstimates = DataRecord::fetchRecords(sprintf('SELECT e.* FROM estimate AS e WHERE ADDDATE(NOW(), INTERVAL -18 MONTH) > e.Created_On;'));

	foreach($oldEstimates as $oldRow) {
		$oldRow['Status'] = 'Unsuccessful';
	}
}

// above SELECT written as UPDATE (with extras gubbins)
function unsuccessful() {
	new DataQuery(sprintf('UPDATE estimate SET Status=\'Unsuccessful\' WHERE ADDDATE(NOW(), INTERVAL -18 MONTH)>Created_On AND Status=\'Pending\''));

	FeedbackCommon::add('Old estimates successfully cleared', null, 'bubbleFeedback'); // show message to user after click

	redirect(sprintf("Location: %s", $_SERVER['PHP_SELF'])); // refresh self
}
?>
 
<!-- javascript redirect (to _self) calling unsuccessful function via action -->
<input type="button" name="set" value="Set old estimates to unsuccessful" onclick="redirect('?action=unsuccessful');" />

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - COALESCE (REPLACE NULL VALUES)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

// IF o.Orders_Despatched IS NOT NULL, THEN show value of o.Orders_Despatched, ELSEIF o.Orders_Despatched IS NULL, show 0
SELECT o.Month, COALESCE(o.Orders_Despatched, 0) AS Orders_Despatched, COALESCE(d.Discrepancies, 0) AS Discrepancies

// COALESE takes the first NON NULL value of a list - IF NOT NULL show estd else (IS NULL so show) country (IF COUNTRY), else show pub_city
SELECT pub_NAME,COALESCE(estd,country,pub_city) FROM newpublisher; 

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - CONCAT + SUBSTRING + LOCATE (LOCATE POS OF CHARACTER WITHIN STRING)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

$sql = sprintf("SELECT t.id, t.reference, t.assetNameId, a.name, SUBSTR(a.name, 1, LOCATE('.', a.name)-1) AS filename, SUBSTR(a.name, LOCATE('.', a.name)) AS extension, CONCAT(SUBSTR(a.name, 1, LOCATE('.', a.name)-1), '-100x100', SUBSTR(a.name, LOCATE('.', a.name))) AS thumbnail
		FROM tag AS t
		LEFT JOIN asset_name AS a ON a.id=t.assetNameId");

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - GET DATA BETWEEN DATES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

WHERE Created_On >= DATE_SUB(NOW(),INTERVAL 1 YEAR) // Get data with date greater than one year ago (from now)
ORDER BY Created_On DESC'));

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - SUBQUERIES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

// Get new results (often by using aliases) in super-query (outer-query) from results obtained with sub-query (inner-query).
// 'Sub-queries are the logically correct way to solve problems of the form, "Get facts from A, conditional on facts from B".' 
// 'If the outer query expects a single value or a list of values from the subquery, the subquery can only use one expression or column name in its select list.'
// 'Some common uses for subqueries are to retrieve the results of an aggregate function such as SUM or COUNT or to look up a description based on a code value.'
// Remember to "raise up" fields (Created_On) from sub/inner-queries to super/outer-queries in order to reference and using them beyond where they were defined 

<?php
	
// EXAMPLE USING LEFT JOINS... (note: joining using 'ON' a.key=b.key; and use of aliases to capture values in main SELECT statement)
$records = DataRecord::fetchRecords(sprintf('SELECT p.Product_Title, p.Product_ID AS Quick_Find, DATE_FORMAT(ts.Created_On, \'%%Y %%m\') AS Month, tp.Purchased, ts.Orders, tq.Quantity
		
		FROM product AS p

		LEFT JOIN (
			SELECT ws.Product_ID, SUM(ws.Quantity_In_Stock) AS Quantity
			FROM warehouse_stock AS ws
			GROUP BY ws.Product_ID
		) AS tq ON tq.Product_ID=p.Product_ID

		LEFT JOIN (
			SELECT pl.Product_ID, SUM(pl.Quantity - pl.Quantity_Decremental) AS Purchased
			FROM purchase_line AS pl
			WHERE pl.Product_ID>0
			GROUP BY pl.Product_ID
		) AS tp ON tp.Product_ID=p.Product_ID

		LEFT JOIN (
			SELECT ol.Created_On, ol.Product_ID, SUM(ol.Quantity) AS Orders
			FROM order_line AS ol
			WHERE ol.Despatch_Id > 0 AND ol.Product_ID>0
			GROUP BY ol.Product_ID
		) AS ts ON ts.Product_ID=p.Product_ID

		INNER JOIN manufacturer AS m ON m.manufacturer_ID=p.Manufacturer_ID AND m.manufacturer_ID=%d
		GROUP BY p.Product_ID, Month
		ORDER BY p.Product_Title ASC, Month ASC;', $session->Manufacturer->ID));	
?>

<?php

// regular query with longhand (non-aliases) to calculate Gross_Profit
$resultQuery = sprintf("SELECT 
				IF(c.Parent_Contact_ID>0, c.Parent_Contact_ID, c.Contact_ID) AS Contact_ID, 
				IF(c.Parent_Contact_ID>0, o2.Org_Name, CONCAT_WS(' ', p.Name_First, p.Name_Last)) AS Contact,
				cl.name AS Classification_Name, 
				MAX(i.Created_On) AS Last_Invoice_Date, 
				COUNT(DISTINCT o.Order_ID) AS Total_Order_Count, 
				COUNT(DISTINCT i.Invoice_ID) AS Total_Invoice_Count, 
				ROUND(SUM(o.SubTotal-o.TotalDiscount), 2) AS Total_Net, 
				ROUND(SUM(o.SubTotal-o.TotalDiscount)/(COUNT(DISTINCT i.Invoice_ID)), 2) AS Average_Invoice,
				ROUND(SUM(o.Cost), 2) AS Total_Cost, 
				ROUND(SUM(o.SubTotal-o.TotalDiscount-o.Cost), 2) AS Total_Profit, 
				ROUND( (SUM(o.SubTotal-o.TotalDiscount)-SUM(o.Cost)) / (SUM(o.SubTotal-o.TotalDiscount)) * 100, 2) AS Gross_Profit
				FROM orders AS o 
				INNER JOIN order_line AS ol ON ol.Order_ID=o.Order_ID 
				INNER JOIN invoice AS i ON i.Invoice_ID=ol.Invoice_ID AND i.Created_On>=ADDDATE(NOW(), INTERVAL -%d DAY) 
				INNER JOIN channel AS ch ON ch.Channel_ID=o.Channel_ID AND ch.Classification_ID<>4 
				INNER JOIN classification AS cl on cl.id=ch.Classification_ID 
				INNER JOIN customer AS cu ON cu.Customer_ID=i.Customer_ID 
				INNER JOIN contact AS c ON c.Contact_ID=cu.Contact_ID 
				LEFT JOIN contact AS c2 ON c2.Contact_ID=c.Parent_Contact_ID 
				LEFT JOIN person AS p ON p.Person_ID=c.Person_ID 
				LEFT JOIN organisation AS o2 ON o2.Org_ID=c2.Org_ID 
				WHERE o.Is_Cost_Price='N' AND o.Created_On>=ADDDATE(NOW(), INTERVAL -%d DAY) AND ch.Classification_ID=%d 
				GROUP BY Contact_ID", $period, $period, $form->GetValue('classification'));

	
// subquery using aliases to calculate Gross_Profit
		$resultQuery = sprintf("SELECT *, ROUND( ( (Total_Net-Total_Cost) / Total_Net ) * 100, 2) AS Gross_Profit

			FROM (

				SELECT 
				IF(c.Parent_Contact_ID>0, c.Parent_Contact_ID, c.Contact_ID) AS Contact_ID, 
				IF(c.Parent_Contact_ID>0, o2.Org_Name, CONCAT_WS(' ', p.Name_First, p.Name_Last)) AS Contact,
				cl.name AS Classification_Name, 
				MAX(i.Created_On) AS Last_Invoice_Date, 
				COUNT(DISTINCT o.Order_ID) AS Total_Order_Count, 
				COUNT(DISTINCT i.Invoice_ID) AS Total_Invoice_Count, 
				ROUND(SUM(o.SubTotal-o.TotalDiscount), 2) AS Total_Net, 
				ROUND(SUM(o.SubTotal-o.TotalDiscount)/(COUNT(DISTINCT i.Invoice_ID)), 2) AS Average_Invoice,
				ROUND(SUM(o.Cost), 2) AS Total_Cost, 
				ROUND(SUM(o.SubTotal-o.TotalDiscount-o.Cost), 2) AS Total_Profit
				FROM orders AS o 
				INNER JOIN order_line AS ol ON ol.Order_ID=o.Order_ID 
				INNER JOIN invoice AS i ON i.Invoice_ID=ol.Invoice_ID AND i.Created_On>=ADDDATE(NOW(), INTERVAL -%d DAY) 
				INNER JOIN channel AS ch ON ch.Channel_ID=o.Channel_ID AND ch.Classification_ID<>4 
				INNER JOIN classification AS cl on cl.id=ch.Classification_ID 
				INNER JOIN customer AS cu ON cu.Customer_ID=i.Customer_ID 
				INNER JOIN contact AS c ON c.Contact_ID=cu.Contact_ID 
				LEFT JOIN contact AS c2 ON c2.Contact_ID=c.Parent_Contact_ID 
				LEFT JOIN person AS p ON p.Person_ID=c.Person_ID 
				LEFT JOIN organisation AS o2 ON o2.Org_ID=c2.Org_ID 
				WHERE o.Is_Cost_Price='N' AND o.Created_On>=ADDDATE(NOW(), INTERVAL -%d DAY) AND ch.Classification_ID=%d 
				GROUP BY Contact_ID

			) AS z", $period, $period, $form->GetValue('classification'));
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - DATATYPES: TEXT
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- TINYTEXT (255 bytes); TEXT (65535 bytes); MEDIUMTEXT (16,777,215 bytes 2^24 - 1); LONGTEXT (4G bytes 2^32 – 1)

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - ESCAPE KEYWORD
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- `keyword` -- `` escapes keyword

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - JOINS (+ HAVING)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php

$stock_summary = DataRecord::fetchRecords(sprintf('SELECT w.Warehouse_Name, SUM(Quantity_In_Stock) AS Quantity_In_Stock, minimumQuantity 
		FROM warehouse AS w
		LEFT JOIN warehouse_stock AS ws ON ws.Warehouse_ID=w.Warehouse_ID AND ws.Product_ID=%1$d
		LEFT JOIN warehouse_product AS wp ON wp.warehouseId=w.Warehouse_ID AND wp.productId=%1$d
		GROUP BY w.Warehouse_Name
		HAVING Quantity_In_Stock OR minimumQuantity
		ORDER BY w.Warehouse_Name ASC', $product->ID));


// JOIN: INNER, LEFT OUTER, RIGHT OUTER, FULL OUTER and CROSS

// http://blog.codinghorror.com/a-visual-explanation-of-sql-joins/
// http://en.wikipedia.org/wiki/Join_(SQL)

?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - HAVING
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

// WHERE filters for individual row data before SELECT, HAVING filters grouped data after SELECT.
// WHERE limits the number of rows displayed by SELECT, HAVING limits the number of groups displayed by GROUP BY.
// WHERE applies to the original row data and before aggregation; HAVING applies to the output row data after it has been aggregated.
// HAVING applies the condition to each aggregated group of rows, while the WHERE applies the condition to each individual row.

SELECT *
FROM (
  SELECT Product_ID, Catalogue_Number_1, Integration_ID, COUNT(*) AS count
  FROM product
  GROUP BY Catalogue_Number_1
  HAVING COUNT(*) > 1
  ORDER BY Catalogue_Number_1
) AS i
HAVING Integration_ID > 1
ORDER BY count DESC;

-- Find which order has total sales greater than 1000 and contains more than 600 items
SELECT ordernumber,
	SUM(quantityOrdered) AS itemsCount,
	SUM(priceeach) AS total
FROM orderdetails
GROUP BY ordernumber
HAVING total > 1000 AND itemsCount > 600

-- Find all orders that have shipped and have total sales greater than 1500
SELECT a.ordernumber,
	SUM(priceeach) total,
	status
FROM orderdetails a
INNER JOIN orders b ON b.ordernumber = a.ordernumber
GROUP BY ordernumber
HAVING b.status = 'Shipped' AND total > 1500;

-- Find duplicates
SELECT Product_ID, Catalogue_Number_1, COUNT(*)
FROM product
GROUP BY Catalogue_Number_1
HAVING COUNT(*) > 1
ORDER BY Product_ID;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - DATE: EXTRACT DATE FROM DATETIME
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- UPDATE lead SET generatedOn=DATE(createdOn) WHERE generatedOn='0000-00-00';

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - OR: WRAP 'AND' AND 'OR' IN PARENTHESES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- SELECT * FROM lead WHERE (result='Pitch & Miss' OR result='Blow Out');

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - LIKE AND NOT LIKE
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- SELECT column FROM tbl WHERE column LIKE '%word1%' OR column LIKE '%word2%';
- !(LIKE '%not this%' AND '%not that%')

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - UPDATE 
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

// UPDATING TABLE VIA SUBQUERY/JOIN ON SAME TABLE
http://stackoverflow.com/questions/4268416/sql-update-with-sub-query-that-references-the-same-table-in-mysql

UPDATE tableName t1
INNER JOIN tableName t2
ON t2.ref_column = t1.column_to_uptade
SET t1.column_to_uptade = t2.column_desired_value;

UPDATE product_prices_current ppc1
INNER JOIN product_prices_current ppc2 ON ppc2.Product_Price_ID = ppc1.Product_Price_ID AND ppc1.Product_ID in
(
9385, 9374, 9375, 9386, 9402, 9395, 9387, 9376, 9377, 9396, 9388, 9378, 9379, 9403, 9389, 9390, 9397,
9380, 9381, 9391, 9404, 9392, 9382, 9398, 9393, 9399, 9383, 9400, 9384, 9394, 9401, 9405, 9406, 9407,
9419, 9408, 9429, 9409, 9420, 1517, 9430, 9421, 9410, 9411, 9431, 9422, 9412, 9413, 9438, 9423,
9424, 9432, 9414, 9433, 9415, 9425, 9439, 9426, 9416, 9434, 9427, 9435, 9417, 9436, 9418, 9428, 9437,
9440, 9441, 9442, 9454, 9443, 9464, 9444, 9455, 9473, 9465, 9456, 9445, 9446, 9466, 9457, 9447,
9448, 9474, 9458, 9459, 9467, 9449, 9468, 9450, 9460, 9475, 9461, 9451, 9469, 9462, 9470, 9452, 9471,
9453, 9463, 9472, 9476, 9477, 9478, 9490, 9491, 9492, 9493, 9494, 9495, 9479, 9480, 9481, 9482,
9483, 9484, 1517, 9485, 9486, 9487, 9488, 9489, 9498, 9499, 9500, 9501, 9502, 9503, 9504, 9496, 9497,
9505, 9510, 9506, 9507, 9511, 9512, 9508, 9509, 9513, 9514, 9517, 9518, 9519, 9515, 9520, 9516,
9526, 9521, 9522, 9527, 9523, 9524, 9525, 9529, 9533, 9530, 9534, 9531, 9535, 9532, 9536, 9528, 9544,
9547, 9548, 9549, 9552, 9553, 9554, 9555, 9556, 9550, 9551, 9559, 9560, 9561, 9557, 9562, 9558,
9545, 9546, 9537, 9538, 9539, 9540, 9541, 9542, 9543, 9575, 9576, 9577, 9578, 9573, 9574, 9579, 9580,
9581, 9563, 9564, 9565, 9582, 9571, 9572, 9568, 9569, 9570, 9566, 9567, 9588, 9591, 9592, 9593,
9594, 9590, 9598, 9595, 9596, 9597, 9587, 9583, 9584, 9585, 9599, 9604, 9600, 9605, 9601, 9602, 9603,
9589, 9586, 9617, 9621, 9620, 9616, 9619, 9618, 9607, 9612, 9608, 9613, 9609, 9614, 9610, 9615,
9606, 9611, 9639, 9623, 9627, 9626, 9622, 9625, 9624, 9629, 9628, 9631, 9630, 9633, 9632, 9638, 9637,
9636, 9635, 9634, 9647, 9642, 9644, 9646, 9641, 9645, 9640, 9651, 9650, 9649, 9648, 9643
)
SET ppc1.Price_Base_Our = (ppc2.Price_Base_RRP * 0.37) * 1.333;

- UPDATE product_video2 SET name=REPLACE(name, 'K Series - Low Consumption Radiator', 'Q Series - Low Consumption Radiator') WHERE name LIKE 'K%';
- UPDATE job SET `solarHotwater` = 1 WHERE solarImmersun = 1 OR solarIboost = 1;

// update based on fk values from another table
- UPDATE estimate_task_line AS etl
- LEFT JOIN product AS p ON p.Product_ID=etl.Product_ID
- SET etl.Product_ID=NULL WHERE p.Product_ID IS NULL;

- UPDATE TABLE_1 
- LEFT JOIN TABLE_2 ON TABLE_1.COLUMN_1=TABLE_2.COLUMN_2 
- SET TABLE_1.COLUMN = EXPR WHERE TABLE_2.COLUMN2 IS NULL

- UPDATE `Table A`,`Table B`
- SET `Table A`.`text`=concat_ws('',`Table A`.`text`,`Table B`.`B-num`," FROM ",`Table B`.`date`,'/')
- WHERE `Table A`.`A-num` = `Table B`.`A-num`

- http://dev.mysql.com/doc/refman/5.0/en/update.html

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - CLONE TABLE USING SELECT
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- CREATE TABLE product_video2 SELECT * FROM product_video;

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - CASE
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
$orders = DataRecord::fetchRecords(sprintf('SELECT o.Order_ID, CASE o.Order_Prefix WHEN \'W\' THEN \'Web\' WHEN o.Order_Prefix = \'T\' THEN \'Telesale\' END AS Category, CONCAT_WS(\' \', o.Billing_First_Name, o.Billing_Last_Name) AS Name, p.Email AS Email, o.Channel_ID, o.Status, o.Created_On, o.despatchedOn, cu.Code AS Currency FROM orders AS o INNER JOIN currencies AS cu ON cu.Currency_ID=o.Currency_ID INNER JOIN customer AS cm ON cm.Customer_ID=o.Customer_ID INNER JOIN contact AS cn ON cn.Contact_ID=cm.Contact_ID INNER JOIN person AS p ON p.Person_ID=cn.Person_ID WHERE o.Channel_ID=%1$d AND o.Status=\'Despatched\' AND o.despatchedOn LIKE \'%2$s %%\' ORDER BY o.despatchedOn ASC LIMIT 0, 1', self::$channelId, nowDate()));
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - VARIOUS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

// Reset AUTO_INCREMENT
ALTER TABLE mytable AUTO_INCREMENT = 1

// DATE: Start the date at the beginning (1st) of the month
ol2.Created_On>ADDDATE(DATE_FORMAT(NOW(), '%Y-%m-01'), INTERVAL -12 MONTH)

// see lead_calendar_appointment.php ... sprintf OR statement to include reps if there are any, else there are null... not sure we really understand this...
$leadRecords = DataRecord::fetchRecords(sprintf('SELECT l.repOfficeWorkerId, l.contactId, l.bookedOn, l.bookingDuration, l.result, l.id, COUNT(l.id) AS count
	FROM lead AS l
	WHERE DATE(l.bookedOn) IN (\'%s\') AND officeId = %d AND (l.repOfficeWorkerId IS NULL %s) AND l.result IN (\'Rearranged\', \'Appointed\')
	GROUP BY l.bookedOn, l.result', $selectedDate, $form->GetValue('office'), (count($repOfficeWorkerIds) > 0) ? sprintf('OR l.repOfficeWorkerId IN (%s)', implode(', ', $repOfficeWorkerIds)) : ''));

EXPLAIN SELECT * FROM table_name;
ALTER TABLE payment DROP `fraudDescription`; // DROP column
ALTER TABLE job_solar_transaction DROP COLUMN solarImmersun, DROP COLUMN solarIboost;
ALTER TABLE manufacturer MODIFY COLUMN `Password` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '' AFTER `Username`; // move column placement

DELETE FROM exceptional_cost;
TRUNCATE TABLE exceptional_cost;
SELECT MAX(id) FROM exceptional_cost;

SELECT ec.id AS id, ec.createdOn AS date, j.Index_Number AS Job_Number, ec.name AS name,
ec.description AS description, ec.cost AS cost
FROM exceptional_cost AS ec
INNER JOIN job AS j ON j.Job_ID=ec.jobId
ORDER BY date DESC;

SELECT o.Order_ID, o.Created_On, IF(o.Custom_Order_No = '', 'N/A', o.Custom_Order_No) AS Custom_Order_No FROM orders AS o;

SELECT ec.id AS id, ec.createdOn AS date, ec.jobId, j.Index_Number AS Job_Number, ec.name AS name,
ec.description AS description, ec.cost AS cost
FROM exceptional_cost AS ec
LEFT JOIN job AS j ON j.Job_ID=ec.jobId
ORDER BY date DESC;

SELECT * FROM job WHERE Job_ID=50066 AND Parent_ID=0;

$records = DataRecord::fetchIndexedRecords('id', sprintf('SELECT ec.id AS id, ec.createdOn AS date, j.Index_Number AS Job_Number, ec.name AS name, ec.description AS description, ec.status as status, ec.cost AS cost FROM exceptional_cost AS ec INNER JOIN job AS j ON j.Job_ID=ec.jobId ORDER BY date DESC;'));

// $cleanJobId = preg_replace("/[^0-9]/", "", $jobId); //
// $object->setValue('jobId', $cleanJobId); //

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - VARIOUS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- USE table_name 
- DESCRIBE table_name (show the column datatypes, keys and defaults)
- EXPLAIN SELECT (ask sql to show its workings)
- DELETE FROM table_name (delete everything but leaves last autoincrement value intact)
- TRUNCATE TABLE table_name (delete everything and reset autoincrement to 0)
- ALTER TABLE tablename AUTO_INCREMENT = 1;
- SELECT MAX(id) (get the highest value of autoincremented id)
- (Don't yet understand why: AP: LEFT JOIN on one-to-one relationships; INNER JOIN on one-to-many relationships)
- SQL: COUNT(*) // return count (sum) of all rows // COUNT(Col_ID) // return count (sum) of rows where Col_ID is distinct e.g. Col_ID_8 = 10, Col_ID_9 = 39
- LEFT JOINS: IF(ISNULL(ws.Quantity_In_Stock), 0, SUM(ws.Quantity_In_Stock)) AS Quantity_Stocked // Rather than show "NULL", show "0" - IF(ISNULL(test, 0, else))

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - IN (AND PHP IMPLODE)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- $checkIntegration = DataRecord::fetchRecords(sprintf("SELECT Product_ID, Integration_ID FROM product WHERE Product_ID IN (%s)", implodeQuote(', ', $duplicates)));
- (implodeQuote is an AP custom function that inserts an apostrope at the *beginning* and end of the array of comma-separated values. implode() only inserts middles)

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SQL - INSERT
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- INSERT INTO table_name (id, name, minimum) VALUES (DEFAULT, adam, DEFAULT);
-- INSERT INTO warehouse_product (warehouseId, productId, minimumQuantity) VALUES (12, 1800, 5);
- INSERT INTO table_name () VALUES(); (will use defaults values where set, else will use NULL)
- INSERT INTO table_name (a,b,c) VALUES(1,2,3),(4,5,6),(7,8,9); (insert multiple rows of column values)
- INSERT INTO table_name (a, b, c) (SELECT 1234, b, c FROM table_name WHERE id = 1);
- INSERT INTO table_name (a, b, c) (SELECT 1234, b, c FROM table_name WHERE id = 1), (SELECT 1235, b, c FROM table_name WHERE id = 1), (SELECT 1236, b, c FROM table_name WHERE id = 1);

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| JAVASCRIPT/JQUERY - CALLING COMMON FUNCTIONS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Getting and setting data from db to jQuery dialog form via div
- See: cjec/admin/lead_calendar_appointment.php

<div class="booking" style="top: <?php echo $y; ?>px; height: <?php echo $d; ?>px;" data-rep="<?php echo $leadRow['repOfficeWorkerId'] ?>" data-lead="<?php echo $leadRow['id']; ?>" data-date="<?php echo cDatetime($leadRow['bookedOn'], 'shortdate'); ?>" data-time="<?php echo substr($leadRow['bookedOn'], 11, 5); ?>" data-duration="<?php echo $leadRow['bookingDuration']; ?>"><?php echo $leadRow['id'] . '<br />' . $leadRow['repOfficeWorkerId'] . '<br />' . $leadRow['bookedOn'] . '<br />' . $leadRow['bookingDuration'] . '<br />' . '<img border="0" src="/resources/common/images/icons/16/wrench-screwdriver.png" width="16" height="16" alt="Edit" />'; ?></div>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| JAVASCRIPT/JQUERY - CALLING COMMON FUNCTIONS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Calling javascript functions after adding to a page (lead_calendar_appointments... See functions in class.page:

<script>
	$(function() {
		$('.sectionToolInfo').tooltip();
		$('.datePicker').datepicker();
		$('.timePicker').timepicker({ 'timeFormat': 'H:i', 'step' : '15' });
	});
</script>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| JAVASCRIPT/JQUERY - LIVE FILTERING OF SEARCH RESULTS AS USER TYPES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- See CJEC: apparel_request.php

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| JAVASCRIPT/JQUERY - COMMON FUNCTIONS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Use functions.js (cjec_contracting\resources\common\scripts\functions.js) for common javascript (popups, redirects)

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| JAVASCRIPT/JQUERY - AUTO SUBMIT FORM
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<script type="text/javascript">document.form.submit();</script>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| JAVASCRIPT/JQUERY - JQUERY: TOGGLE SHOW/HIDE form section
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- See: CJEC: /offices.php?action=edit and /literature_request.php?action=request

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| JAVASCRIPT/JQUERY - HIGHCHARTS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Setting celling and floor
- http://stackoverflow.com/questions/23545641/highcharts-y-axis-ceiling-not-being-respected

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| JAVASCRIPT/JQUERY - GOOGLE MAPS API (JS with PHP = AJAX)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

// AJAX/PHP Example: http://www.harmonithermostat.co.uk/availability
// http://stackoverflow.com/questions/2818984/google-map-api-v3-center-zoom-on-displayed-markers
// map - instance of google Map v3
// markers - array of Markers
map.fitBounds(markers.reduce(function(bounds, marker) {
	return bounds.extend(marker.getPosition());
}, new google.maps.LatLngBounds()));
// 

<div id="InstallMap" style="height: 800px;"></div>
	</div>
</div>

<script type="text/javascript" src="//maps.google.com/maps/api/js?sensor=false&libraries=geometry,visualization"></script>
<script>
		$(document).ready(function() {
			var mapLatlng = new google.maps.LatLng(54, -2);

		var mapOptions = {
			zoom: 6,
			center: mapLatlng,
			mapTypeId: google.maps.MapTypeId.TERRAIN
		};

		var map = new google.maps.Map(document.getElementById('InstallMap'), mapOptions);

		<?php
		$offices = array();

		foreach($records as $row) {
			if(($row['siteLongitude'] <> 0) && ($row['siteLatitude'] <> 0) && ($row['officeId'])) { 
				$offices[$row['officeId']] = $row['officeId'];	
			}
		}

		$index = 0;

		foreach($offices as $officeId) {
			?>

			var heatmapData = [];

			<?php
			foreach($records as $row) {
				if(($row['siteLongitude'] <> 0) && ($row['siteLatitude'] <> 0)) {
					if($officeId == $row['officeId']) {
					?>
						heatmapData.push(new google.maps.LatLng(<?php echo $row['siteLatitude']; ?>, <?php echo $row['siteLongitude']; ?>));

					<?php		
					}
				}
			}

			?>

			var heatmap = new google.maps.visualization.HeatmapLayer({
				data: heatmapData,
				dissipating: false,
				radius: 0.1,
				gradient: [
					'rgba(255, 255, 255, 0)',
					'rgba(<?php echo round((255/count($offices)) * $index) ?>, 0, <?php echo round(255 - (255/count($offices)) * $index) ?>, 0.5)',
					'rgba(<?php echo round((255/count($offices)) * $index) ?>, 0, <?php echo round(255 - (255/count($offices)) * $index) ?>, 0.75)',
					'rgba(<?php echo round((255/count($offices)) * $index) ?>, 0, <?php echo round(255 - (255/count($offices)) * $index) ?>, 0.875)',
					'rgba(<?php echo round((255/count($offices)) * $index) ?>, 0, <?php echo round(255 - (255/count($offices)) * $index) ?>, 1)',
			});
		
			heatmap.setMap(map);

			<?php

			$index++;
		}		
			
		?>

		}); 
</script>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| JAVASCRIPT/JQUERY - POPUP WINDOW
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<script type="javascript">
	function popup(url, width, height, name) {
		var win = window.open(url, (name) ? name : 'Popup', 'status=yes,scrollbars=yes,resizable=yes,width='+width+',height='+height);
		win.focus();
	}
</script> 

<p><img src="/resources/common/images/icons/16/printer.png" /> <a href="javascript:popup('invoice-print.php?invoiceid=<?php echo $invoice->ID; ?>', '800', '600', 'Print Invoice <?php echo $invoice->ID; ?>')">Print Invoice</a></p>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| JAVASCRIPT/JQUERY - LIBRARY
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

http://jonthornton.github.io/jquery-timepicker/

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| JAVASCRIPT/JQUERY - UPDATE TOTALS ON KEYUP
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

See: elementshop.co.uk/admin/purchase_invoice_checking.php

<script>
	var moduleLines = <?php echo json_encode($records); ?>

	function moduleUpdateTotal() {
		var id;
		var line;

		var shipping = parseFloat($('input[name="shipping"]').val());
		shipping = !isNaN(shipping) ? shipping : 0;

		var net = 0;
		net += shipping;

		for(var i=0; i<moduleLines.length; i++) {
			id = moduleLines[i].Purchase_Batch_Line_ID;

			line = parseFloat(($('input[name="qty_' + id + '"]').val() * $('input[name="cost_' + id + '"]').val()));
			line = !isNaN(line) ? line : 0;

			net += line;
		}

		$('#Net').html($.number(net, 2));
		$('#VAT').html($.number(net * 0.2, 2));
		$('#Total').html($.number(net * 1.2, 2));
	}

	$(function() {
		$('table.listTable input').keyup(function() {
			moduleUpdateTotal();
		});

		moduleUpdateTotal();
	});
</script>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| HTML + CSS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

HTML - ALIGNING <th>
- <th style="text-align: right;">Total</th>
- <div class="alignCenter"><img src="/resources/common/images/email-guide/iphone-08.png" alt="iPhone Guide 8" /></div>

<?php
// line styles format
echo sprintf('<div class="booking" style="top: %1$dpx; height: %2$dpx;">', (substr($leadRow['bookedOn'], 11, 2) * 392) + ((substr($leadRow['bookedOn'], 14, 2)/60) * 392), $leadRow['hour']) . $leadRow['repOfficeWorkerId'] . '<br />' . $leadRow['bookedOn'] . '</div>';
?>	

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| HTML - TABLES ROWSPANS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

See: cjec: purchase_details.php <h2>Exceptions</h2> section for rowspans via db queries

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| EXCEL
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Excel (Creating SQL queries): Escape functional equal sign by entering a single quote (') at the beginning of the cell ('=)

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| NOTEPAD
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- NotePad++: Find/Replace: [Find what: \r\n] (new line) [Replace with: ,] [Wrap Around] [Search Mode: Extended]

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - CHECKBOXES
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- See http://dev.cjec.co.uk/admin/leads.php AND http://dev.cjec.co.uk/admin/lead_calendar_appointment.php

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - PASSWORDS (CYPHER = NEW; CIPHER = OLD)
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Use System/Framework/Common/Encryption.php (abstraction of below)
- See below and office_workers.php and tbl office (password = BLOB datatype)

<?php
// Encrypt...
$cypher = new Cypher();
$cypher->setValue($password);
$cypher->encrypt();
$cypher->getData();

// Decrypt...
$cypher = new Cypher();
$cypher->setData($password); 
$cypher->decrypt();
$cypher->getValue();
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - SELECT DROPDOWN PER TABLE ROW
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// See ELEM: insert_contacts_completed.php

$managerRecords = DataRecord::fetchRecords(sprintf('SELECT u.User_ID, CONCAT_WS(\' \', p.Name_First, p.Name_Last) AS Name
	FROM users AS u
	INNER JOIN person AS p ON u.Person_ID=p.Person_ID
	WHERE u.Reseller=0 AND u.Is_Active=\'Y\'%1$s
	ORDER BY Name ASC', !empty($contactAccounts) ? sprintf(' AND u.User_ID IN (%1$s)', implode(', ', $contactAccounts)) : ''));

if(!empty($records)) {
	foreach($records as $row) {
		$form->AddField('manager_'.$row['Contact_ID'], 'Account Manager', 'select', '', 'numeric_unsigned', 1, 11, false);

		foreach($managerRecords as $managerRow) {
			$form->AddOption('manager_'.$row['Contact_ID'], $managerRow['User_ID'], $managerRow['Name']);			
		}
	}
}

if(!empty($records)) {
	foreach($records as $row) {
		?>

		<tr>
			<td width="20%"><?php echo $row['Contact']; ?></td>
			<td><?php echo $row['Org_Name']; ?></td>
			<td><?php echo $row['Phone']; ?></td>
			<td width="20%"><?php echo cDatetime($row['completedOn'], 'shortdate'); ?></td>
			<td><?php echo $form->GetHtml('manager_'.$row['Contact_ID']); ?></td> <!-- -->

			?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - OOP + DATA OBJECT
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// Centralise on/by tracking where possible...
protected function preSave() {
	if($this->isDirty('followedUp')) {
		$this->setValue('followedOn', now());
		$this->setValue('followedBy', $GLOBALS['SESSION_USER_ID']);
	}
}

// OBJECT (NEW) VS CLASS (OLD)
/// Use existing object methods where possible and create functions in common as needed 
/// For the sake of dependencies, update class to match any modifications to object... 

// COMMON FUNCTIONS
AssetCommon::getData($asset) // reference public fucntion in static class 

// instantiate new object using url parameter:
$deposit = new DepositDataObject(paramInt('deposit')); // checks for type INT
$deposit = new DepositDataObject(param('deposit'));
?>

<!-- html for above url parameter) -->
<a href="javascript:confirmRequest('?jobid=<?php /echo $job->ID; ?>&amp;action=remove&amp;deposit=<?php echo $row['id']; ?>', 'Are you sure you wish to remove this item?');"><img src="/resources/common/images/icons/16/bin.png" alt="Remove" /></a>
<!-- end html -->

<?php
// within a data object... onchange (isDirty) manipulate another object
protected function preSave() {
	if($this->isDirty('userPassword')) {			
		$this->setValue('passwordValidFrom', now());
	}
}

protected function onSave() {
	if($this->isUpdated('userPassword')) {
		$userPassword = new UserPasswordDataObject();			
		$userPassword->setValue('userId', $this->getId());
		$userPassword->setValue('userPassword', $this->getValue('userPassword'));
		$userPassword->insert();
	}
}

// GET OBJECT DATA VIA SELECT(ID)...
$office->select($id); 

// GET OBJECT DATA VIA SELECT(FIELD)...
$productAlias = new UrlAliasDataObject();
$productAlias->setValue('alias', $trimAlias);

if($productAlias->selectBy('alias')) { // if value of alias exists within alias field of *entire* table, then...
	$form->AddError('Alias already exists.');
}

// NEW ADDRESS...
$address = new AddressDataObject(); // we need an address so create a new object
$address->setId($officeWorker->getValue('addressId')); // if officeworker has an address id, set it
$address->select(); // then attempt to gather all address data to populate our form... if the officeworker doesn't have an address id, no worries...

// Get ID of instance = $object->getId()
// $this->getId()); // get primary key of any object = object->getId();
// Use $this->resetValue('db_field'); to reset back to default col value; $this->revertValue('db_field'); to take db backup value

// isDirty() // has the value changed? also see Users Object  for if($this->isUpdated('userPassword'));
// See Users Object for example of using onSave() function event handler to populate data in another object
// See Lead and Users Objects for preSave() function: updates other tables (via objects) when an object's values have changed

// When using lib/classes/DataTable.php AddLink(), remember to make data available via AddField()
/// $table->AddField(null, 'Job_ID', 'hidden'); // null because table field is not being shown (hidden)
/// $table->AddLink('job_details.php?jobid=%d','<img src=""/>', 'Job_ID', false, false, array('Job_ID', '>', 0));

// Add data to objects using DataCommit within classes: $this->addColumn('id', 'Lead_ID', DataObject::TYPE_INT, 0, false); // datatype, default value, nullable (t/f)
// When applying DataCommit function to old classes, strip[ out conditionals and escape strings -- default values and sanitization is handled in the data object]

// $user = UserCommon::getNameById($job->officeCommissionChangedBy); // get name from a user id using public static function - AC created this function?

// Class instances... Oftentimes it is necessary to call the Get() method on an object in order to retrieve its data: $invoice->PaymentMethod->Get();
// if(!empty($session->Manufacturer->ID)) {$session->Manufacturer->Get();} // calling Get() is neccessary to retrieve a class object instance's data
// Get data only as needed... AP wants to do away with long lists of calls to methods in class object constructors because it's too memory-intensive
// $job = new Job(jobId)); $job->Customer->Get(); $job->Customer->Contact->Get(); <?php echo $job->Customer->Contact->Person->GetFullName(); 
// See job_details.php for other customer-related info: $job->Billing->GetFullName() / $job->Billing->Address->GetFormatted('<br />'); 
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - DATATABLE PARAMS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php

// image, targetIcon, activeIcon are data taken from database; they populate the %s and %%s placeholders automagically
$table->AddField('#', 'id');
$table->AddField('Channel', 'channel', 'left');	
$table->AddField('Banner', 'image', 'center', sprintf('<img src="/%1$s/%2$s/%%s" />', DEFAULT_PATH_CACHE, Cache::IMAGE));	
$table->AddField('Title', 'title', 'left');
$table->AddField('Link', 'link', 'left');
$table->AddField('Target Blank', 'targetIcon', 'center', '<img src="/resources/common/images/icons/16/%s.png" alt="Target Blank" />');
$table->AddField('Is Active', 'activeIcon', 'center', '<img src="/resources/common/images/icons/16/%s.png" alt="Active" />');
$table->AddField('Start', 'start', 'left');
$table->AddField('End', 'end', 'left');
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - URL PARAMS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php 
if(!isParam('id') || !$lead->select(paramInt('id'))) {
}

if(isParam('reps')) {
	$lead->setValue('repOfficeWorkerId', param('value'));
}
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - FORMS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// VARIOUS 

// someId not being stored in database!!! have we echoed the id after setting it up?:
echo $form->GetHTML('jobId');

// Use shorthand function if(isParam('confirm')) rather than if(isset($_REQUEST['confirm']))
// $_REQUEST['jobId'] (get the value of the jobId variable passed via URL string)
// HTTP understands ? as meaning the same page (eg. onclick="window.location.href='?action=)
// Actions are lowercase 'action' in both the url string and the handler name
/// Make sure you're passing all the required data when calling a function via a URL
// When calling actions within partials, make a process_partial_name.php include to insert within php header section of main file
// Multiple filter form buttons: see elements: report_popular_customers.php (ac) and orders_awaiting_despatch.php (ap)
/// See elements/portal/manufacturer/lib/common/app_header.php for passing user ID into object -- $GLOBALS['SESSION_USER_ID'] = $session->Manufacturer->ID 

// remember to adjust length of form name (dropshipsupplier) for validation 
$formDropShip = new Form();
$formDropShip->AddField('confirm', 'Confirm', 'hidden', 'true', 'alpha', 4, 4);
$formDropShip->AddField('form', 'Form', 'hidden', 'dropshipsupplier', 'alpha', 16); // <-- HERE
$formDropShip->SetValue('form', 'dropshipsupplier');

// // echo $formDropShip->GetError();

// Multiple Forms on single/included page...

// Give at least one of the form's form variable a unique name ('accountmanager')
$formManager = new Form();
$formManager->AddField('form', 'Form', 'hidden', 'accountmanager', 'alpha', 1, 50);
$formManager->SetValue('form', 'accountmanager');
$formManager->AddField('confirm', 'Confirm', 'hidden', 'true', 'alpha', 4, 4);
$formManager->AddField('id', 'Telemarketing Contact ID', 'hidden', '', 'numeric_unsigned', 1, 11);

// is 'confirm' checks if a (any) form has been submitted
// is 'accountmanager' checks for a form variable to see which of the forms has been submitted
/// remember to insert the form variable into the HTML: echo $formManager->GetHTML('form');
// if($formManager->Validate()) is all we need to validate form (don't need if($form->Validate() IF we're using $form->Validate())

if(isParam('confirm')) { // <-- this
	if(param('form') == 'accountmanager') { // <-- this
		if($formManager->Validate()) { // <-- this
			foreach($records as $row) {
				$telemarketingContact = new TelemarketingContactDataObject();
							
				if($telemarketingContact->select($row['id'])) {
					$telemarketingContact->setValue('accountManagerId', $_REQUEST['manager_' . $row['id']]);
					$telemarketingContact->update();
				}
			}
		}	
	}
}
?>

<div class="section sectionFilled">
	<?php include('partials/box_tools.php'); ?>

	<h2>Completed Contacts (<?php echo count($records); ?>)</h2>

	<div class="sectionInterior"<?php echo !$boxOpen ? ' style="min-height: 75px; display: none;"' : 'style="min-height: 75px;"'; ?>>

	<?php
		echo $formManager->Open();
		echo $formManager->GetHTML('confirm');
		echo $formManager->GetHTML('form'); // <-- this
		echo $formManager->GetHTML('id');
		// ...

// IDs
$form->AddField('id', 'ID', 'hidden', $productId, 'numeric_unsigned', 1, 11); // $productId is unnecessary if id has been passed to page via url e.g. $_REQUEST['id']
$form->AddField('id', 'ID', 'hidden', '', 'numeric_unsigned', 1, 11); // Correct version of the above

// IDS... checking id exists before using ( if(!isParam('id') ): https://www.spottedpenguin.co.uk/admin/variant_items.php
ini_set('memory_limit', '512M');

require_once('lib/common/app_header.php');
require_once($GLOBALS['DIR_WS_ADMIN'] . 'lib/classes/DataTable.php');
require_once($GLOBALS['DIR_WS_ADMIN'] . 'lib/classes/DataQuery.php');
require_once($GLOBALS['DIR_WS_ADMIN'] . 'lib/classes/Form.php');
require_once($GLOBALS['DIR_WS_ADMIN'] . 'lib/classes/StandardForm.php');
require_once($GLOBALS['DIR_WS_ADMIN'] . 'lib/classes/StandardWindow.php');
import('System/Framework/Common/Asset.php');
import('System/Framework/Common/Feedback.php');
import('System/Framework/Common/Image.php');
import('System/Framework/Object/Asset.php');
import('System/Framework/Object/AssetName.php');
import('System/Framework/Object/Variant.php');
import('System/Framework/Object/VariantItem.php');

if($action == "add") {
	$session->Secure(3);
	add();
	exit;
} elseif($action == "update") {
	$session->Secure(3);
	update();
	exit;
} elseif($action == "remove") {
	$session->Secure(3);
	remove();
	exit;
} else {
	$session->Secure(2);
	view();
	exit;
}

function remove() {
	$variantItem = new VariantItemDataObject();

	if(!isParam('id') || !$variantItem->select(paramInt('id'))) {
		redirectTo('variants.php');
	}

	$variantItem->delete();
	
	redirectTo();	
}

function add() {
	$variant = new VariantDataObject();

	if(!isParam('vid') || !$variant->select(paramInt('vid'))) {
		redirectTo('variants.php');
	}
		
	$variantItem = new VariantItemDataObject();

	$form = new Form();
	$form->AddField('action', 'Action', 'hidden', 'add', 'alpha', 3, 3);
	$form->AddField('confirm', 'Confirm', 'hidden', 'true', 'alpha', 4, 4);
	$form->AddField('vid', 'Variant ID', 'hidden', '', 'numeric_unsigned', 1, 11);
	$form->AddField('name', 'Name', 'text', '', 'paragraph', 1, 100);
	$form->AddField('partnumber', 'Part Number', 'text', '', 'paragraph', 1, 50);
	$form->AddField('image', 'Image', 'file', '', 'file', null, null, false);

	if(isset($_REQUEST['confirm'])) {
		if($form->Validate()) {
			if(fileUploaded('image')) {
				if(ImageCommon::trimUpload('image')) {
					$assetNameId = AssetCommon::addUpload('image');

					if($assetNameId !== false) {
						$variantItem->setValue('assetNameId', $assetNameId);
					}
				}
			}
			
			$variantItem->setValue('variantId', $form->GetValue('vid'));
			$variantItem->setValue('name', $form->GetValue('name'));
			$variantItem->setValue('partNumber', $form->GetValue('partnumber'));

			$variantItem->save();
		
			redirectTo(sprintf('?vid=%d', $form->GetValue('vid')));
		}
	}

	$page = new Page('Add a Variant Item');
	$page->Display('header');

	if(!$form->Valid) {
		echo $form->GetError();
	}

	$window = new StandardWindow();
	$webForm = new StandardForm();

	echo $form->Open();
	echo $form->GetHTML('action');
	echo $form->GetHTML('confirm');
	echo $form->GetHTML('vid');

	echo $window->Open();
	echo $window->AddHeader('Variant Item Details');
	echo $window->OpenContent();
	echo $webForm->Open();
	echo $webForm->AddRow($form->GetLabel('name'), $form->GetHTML('name') . $form->GetIcon('name'));
	echo $webForm->AddRow($form->GetLabel('partnumber'), $form->GetHTML('partnumber') . $form->GetIcon('partnumber'));
	echo $webForm->AddRow($form->GetLabel('image'), $form->GetHTML('image') . $form->GetIcon('image'));

	echo $webForm->AddRow('', sprintf('<input type="submit" name="add" value="add" class="btn" tabindex="%s">', $form->GetTabIndex()));
	echo $webForm->Close();
	echo $window->CloseContent();
	echo $window->Close();
	echo $form->Close();

	$page->Display('footer');
	require_once('lib/common/app_footer.php');
}

function update() {
	$variantItem = new VariantItemDataObject();

	if(!isParam('id') || !$variantItem->select(paramInt('id'))) {
		redirectTo('variants.php');
	}
g
	$form = new Form();
	$form->AddField('action', 'Action', 'hidden', 'update', 'update', 6, 6);
	$form->AddField('confirm', 'Confirm', 'hidden', 'true', 'alpha', 4, 4);
	$form->AddField('id', 'Variant Item ID', 'hidden', '', 'nuermic_unsigned', 1, 11);
	$form->AddField('name', 'Name', 'text', $variantItem->getValue('name'), 'paragraph', 1, 100);
	$form->AddField('partnumber', 'Part Number', 'text', '', 'paragraph', 1, 50, false);
	$form->AddField('image', 'Image', 'file', '', 'file', null, null, false);
	
	if(isset($_REQUEST['confirm'])) {
		if($form->Validate()) {
			if(fileUploaded('image')) {
				if(ImageCommon::trimUpload('image')) {
					$assetNameId = AssetCommon::addUpload('image');

					if($assetNameId !== false) {
						$variantItem->setValue('assetNameId', $assetNameId);
					}
				}
			}

			$variantItem->setValue('name', $form->GetValue('name'));
			$variantItem->setValue('partNumber', $form->GetValue('partnumber'));
			$variantItem->save();

			redirectTo('?vid=' . $variantItem->getValue('variantId'));
		}
	}

	$page = new Page('Update Variant Item');
	$page->Display('header');

	if(!$form->Valid) {
		echo $form->GetError();
	}

	$window = new StandardWindow();
	$webForm = new StandardForm();

	echo $form->Open();
	echo $form->GetHTML('action');
	echo $form->GetHTML('confirm');
	echo $form->GetHTML('id');

	echo $window->Open();
	echo $window->AddHeader('Variant Details');
	echo $window->OpenContent();
	echo $webForm->Open();
	echo $webForm->AddRow($form->GetLabel('name'), $form->GetHTML('name') . $form->GetIcon('name'));
	echo $webForm->AddRow($form->GetLabel('partnumber'), $form->GetHTML('partnumber') . $form->GetIcon('partnumber'));
	echo $webForm->AddRow($form->GetLabel('image'), $form->GetHTML('image') . $form->GetIcon('image'));

	
	if($variantItem->getValue('assetNameId') > 0) {

		$assetName = new AssetNameDataObject($variantItem->getValue('assetNameId'));

		echo $webForm->AddRow('Current Image', sprintf('<img src="/cache/images/%s" />', $assetName->getValue('name')));
	}
	
	echo $webForm->AddRow('', sprintf('<input type="submit" name="update" value="update" class="btn" tabindex="%s">', $form->GetTabIndex()));
	echo $webForm->Close();
	echo $window->CloseContent();
	echo $window->Close();

	echo $form->Close();

	$page->Display('footer');
	require_once('lib/common/app_footer.php');
}

function view() {
	$variant = new VariantDataObject();

	if(!isParam('vid') || !$variant->select(paramInt('vid'))) {
		redirectTo('variants.php');
	}

	$page = new Page(sprintf('%s Variant Items', $variant->getValue('name')));
	$page->Display('header');

	$sql = sprintf("SELECT vi.id, vi.name AS name, vi.partNumber, vi.assetNameId, a.name AS asset, SUBSTR(a.name, 1, LOCATE('.', a.name)-1) AS filename, SUBSTR(a.name, LOCATE('.', a.name)) AS extension, IF(!ISNULL(a.name), CONCAT('/cache/images/', SUBSTR(a.name, 1, LOCATE('.', a.name)-1), '-50x50', SUBSTR(a.name, LOCATE('.', a.name))), '') AS thumbnail
		FROM variant_item AS vi
		LEFT JOIN variant AS v ON v.id=vi.variantId
		LEFT JOIN asset_name AS a ON a.id=vi.assetNameId
		WHERE vi.variantId=%d", $variant->getId());

	$table = new DataTable();
	$table->SetSQL($sql);

	$table->AddField('ID', 'id', 'left');
	$table->AddField('Name', 'name', 'left');
	$table->AddField('Part Number', 'partnumber', 'left');
	$table->AddField('Image', 'thumbnail', 'center', '<img src="%s" />');
	$table->AddLink("?action=update&id=%s","<img src=\"/resources/common/images/icons/16/wrench-screwdriver.png\" alt=\"Update\" />", "id");
	$table->AddLink("javascript:confirmRequest('variant_items.php?action=remove&confirm=true&id=%s','Are you sure you want to remove this item?');", "<img src=\"/resources/common/images/icons/16/cross.png\" alt=\"Remove\" />", "id");
	$table->SetMaxRows(25);
	$table->SetOrderBy("name");
	$table->Finalise();
	$table->DisplayTable();

	echo sprintf('<input type="button" name="add" value="add new variant item" class="btn" onclick="redirect(\'?action=add&vid=%d\');" />', $variant->getId());

	$page->Display('footer');
	require_once('lib/common/app_footer.php');
}

// SET UP
// Use... if(isParam('confirm')) { ... rather than if(isset($_REQUEST[confirm'])) before attempting validation... if($form->Validate()) {
// Defensive URL Arguments: Use if(isParam(...)) rather than if(isset($_REQUEST['...']))

// SET UP: IDEAL FORM...
$form = new Form();
$form->AddField('confirm', 'Confirm', 'hidden', 'true', 'alpha', 4, 4);
$form->AddField('id', 'ID', 'hidden', '', 'numeric_unsigned', 1, 11);
$form->AddField('alias', 'Alias', 'text', '', 'paragraph', 1, 200, false, 'style="width: 300px;"');

if(isParam('confirm')) {
	if($form->Validate()) {
		$trimAlias = ltrim($form->GetValue('alias'), "/");

		$productAlias = new UrlAliasDataObject();
		$productAlias->setValue('alias', $trimAlias);

		if($productAlias->selectBy('alias')) {
			$form->AddError('Alias already exists.');
		}

		if($form->Valid) {
			$productAlias->setValue('type', 'Product');
			$productAlias->setvalue('referenceId', $productId);
			$productAlias->save();

			redirectTo(sprintf('product_url_alias.php?id=%d', $form->GetValue('id')));		
		}
	}
}

// adding text/html/link to webform output
echo $webForm->AddRow('', sprintf('<input type="submit" name="login" value="Login" class="button" tabindex="%s" /> <small><a href="login_forgotten_password.php">Forgotten password?</a></small>', $form->GetTabIndex()));
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - MANAGEMENT PAGES - ADD/EDIT FUNCTIONS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php

// only use one function to do the jobs of edit/add
// within function edit()...

// because a new object (add) won't have an id...
$overlay = new OverlayDataObject();
if(isParam('id') && (paramInt('id') > 0)) {
	if(!$overlay->select(paramInt('id'))) {
		redirectTo();
	}
}

// if in add mode, form field won't have a default value coming from object
$form->AddField('title', 'Title', 'text', $overlay->getValue('title'), 'anything', 0, 255);

// show user add or update depending on existence of object
$page = new Page(sprintf('<a href="?action=view">Overlay</a> &gt; %1$s Channel', ($channel->getId() > 0) ? 'Update' : 'Add'));
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - REDIRECTS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// OLD: redirect("admin/login.php") 
// NEW: redirectTo("login.php") // systems knows the cwd

// redirect but not back to redirection destination page
if((stristr($_SERVER['PHP_SELF'], 'user_account.php') === false) && (stristr($_SERVER['PHP_SELF'], 'window_user_recent.php') === false)) { 
	redirect(sprintf('Location: %s', 'user_account.php')); 
} 
?>  

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - CJEC: VARIOUS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Contractors work by Index_Numbers rather than Job_IDs - have to convert using cjec.job database
- Extracts: After adding an extract to the db, go to Admin > Settings > Security > Extract Office to select which office has access to the extract

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - COMMON FUNCTIONS + VARIOUS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// Locations of common functions:
/// System/Functions.php
/// admin/lib/common/generic.php
// Use/update existing Common classes where possible e.g., Common::Date.convertToDatabase()
?>

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - FEEDBACK BUBBLE
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// FeedbackCommon takes a message into the session variable for display in the current loaded page...
FeedbackCommon::add('Your password has expired', '<p>Please create a new password. You cannot use a password you have used before.</p>', 'bubbleWarning');
FeedbackCommon::add('Please create a new password', null, 'bubbleWarning');
FeedbackCommon::add('Account successfully updated', null, 'bubbleFeedback');
FeedbackCommon::add('Cannot Create Sat Note', '<ul>' .  $error . '</ul>', 'bubbleError');

// bubble feedback replaces this older code
// redirect to show a bubble message
redirectTo('?complete');

if(isset($_REQUEST['complete'])) {
	$bubble = new Bubble('Commission Updated', null, 'bubbleFeedback');
	echo $bubble->GetHTML();
}
?>

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - POSTCODES
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php

$order = DataRecord::fetchRecords(sprintf('SELECT c.Courier_Name, c.Courier_URL, d.Courier_Consignment, d.Despatched_On, o.Order_ID, o.Status, o.estimatedDelivery, p.deliveryBefore
			FROM orders AS o
			INNER JOIN courier AS c ON c.Courier_ID=o.Courier_ID AND c.Courier_ID IN (%1$s)
			INNER JOIN despatch AS d ON d.Order_ID=o.Order_ID
			INNER JOIN postage AS p ON p.Postage_ID=o.Postage_ID
   			WHERE o.Order_ID=%2$d AND (REPLACE(o.Billing_Zip, \' \', \'\') LIKE \'%%%3$s%%\' OR REPLACE(o.Shipping_Zip, \' \', \'\') LIKE \'%%%3$s%%\') AND o.Channel_ID=%4$d', implode(', ', $trackingCouriers), mysql_real_escape_string($form->GetValue('orderid')), mysql_real_escape_string(str_replace(' ', '', $form->GetValue('postcode'))), Application::$channel->ID));

?>

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - JAVASCRIPTS
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------

<?php
// wrapping our function in $(function() means that it run window.onload
$page->AddToHead("
	<script>
		$(function() {
			$('a.media').media( { width: 300, height: 20 } );
		});
	</script>
	");
?>

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - DEBUG JAVASCRIPTS
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Watch script run in chrome console by: Network > [click script] > Response

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - SQL ERROR: QUERY IS EMPTY
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- If using sprintf AND DATE_FORMAT, escape % on date format placeholders with %% e.g., DATE_FORMAT(d.Despatched_On, \'%%W - %%e/%%m/%%Y\') AS \'ShipmentDate\'

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GOTCHAS - SQL SANITATION WHERE USER INPUT
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- ALWAYS encapsulate url parameters within mysql_real_escape_string - e.g. mysql_real_escape_string($requestUrl);

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GRAPHICS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- \\CJESERVER\PROJECTS\GRAPHICS...
- C:\Projects\Web\elements\resources\channels\heatershop\letterheads
- https://www.heatershop.co.uk/channelimage (1000px width, transparent, png)
- http://www.cjelectrical.co.uk/channelimage?size=email
- http://www.cjelectrical.co.uk/channelimage?x=180
- <img src="//<?php echo Application::$channel->Domain; ?>/channelimage?y=80" alt="<?php echo Application::$channel->Name; ?>" />
- Export PDFs as Acrobat 5.0 for use with PDF class (basically, downgrade all pdfs to version 5.0)
- Letterheads: https://www.spottedpenguin.co.uk/Scripts/Generate/Letterheads.php? overwrite (overwrite regenerate s letters for channels) -- remember to set dirs to 777
-- dirs to set to 777: recursive resources/channels/{channel} -- if new repo, set mPDF dirs to 777: graph_cache, tmp, ttfontdata

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| RACKSPACE REQUEST DB BACKUP
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Services > Managed Backup
- Linux File System: holland-mysql ... choose 'Request Restore'
- In request form... 
-- Enter desired database to backup e.g. schema.cjec
-- Enter desired location of backup e.g. cjec_2_2016011

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| APACHE 
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

// find services via prompt
services.msc

// localhost:port
http://127.0.0.1:8000/

// config file
httpd.conf ...in... C:\Program Files (x86)\Apache Software Foundation\Apache2.4\conf

// DocumentRoot (set in config)
"C:/Projects/Web"

// php version 5.4

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PERFORMANCE APPRAISALS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Boardroom: 27 April 2015 
-- Fix code rot rather than propagating via copy/paste
-- Markup code with TODOs to comm. intentions/changes
-- Add training ideas to asana for IT weekly Tues 15:00
-- Attend IT/Sales workshops/storms weekly Tues 16:00 

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SAGE AND SAGE EXPORT
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- EHSS - Remote Desktop Connection (EHSS / Admin / l0dWan27) > Connect > Synch (testing) or Synch and Save (sends to sage)

- Sage > Company > Financials > Find entry in list
- Sage 50 Accounts 2014... Invoice List for invoices and credits (Have to close and reopen Invoicing tab to cause a refresh of data)

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PURCHASE ORDERS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Print out order, put in one of Jackie's P/O filefolders (MasterCard or AMEX) located either in draw or on table 

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| DOMAINS + DNS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

TASKS
- Set fasthost name servers to point to rackspace

SETTINGS
- SELECT * FROM website; -- for live testing using heatershop, dev.elementshop.co.uk Channel_ID was set to 7 (www.heatershop) 

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SSL CERTIFICATE
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
- (0) Full process guide: https://www.namecheap.com/support/knowledgebase/article.aspx/794
- (1) Buy new (or reissue SSL) from NameCheap: https://manage.www.namecheap.com/myaccount/sslcert/certsubmit.aspx
- (2) Generate CSR in Plesk: https://www.namecheap.com/support/knowledgebase/article.aspx/9447/0/plesk-12 
-- In Plesk... Example Certificate Name: 2015-www.domain.co.uk (year-domain) / Email: webmaster@domain
- (3) In Namecheap Admin... choose Plesk as server type. Click through until request email of certificate
- (4) Download certificate from Namecheap Admin https://www.namecheap.com/support/knowledgebase/article.aspx/9464/33/can-i-download-an-issued-certificate-on-your-site

The zip file with your certificate will be downloaded to your computer. Once it is unzipped, you will see three files: *.crt, *.ca-bundle and *.p7b .
*.crt and *.ca-bundle are the files for Apache, Nginx, cPanel etc.
*.crt is a file with your server certificate and the *ca-bundle is a file with the Certificate Authority Chain which should be installed on your server with your domain certificate.
*.ca-bundle is necessary for browser to be able to check the CA signature of the certificate. If bundle is missing, incomplete or broken, browser might mark the website as untrusted or even restrict the connection, depending on browser version and security settings.
*.p7b file is a certificate and the CA Bundle combined into one file. The file is suitable for certificate installation on Microsoft IIS and Tomcat servers.

- DLO: (4) When emailed certificate received, have 24 hours from when email sent to install SSL in Plesk
- (5) Install SSL in Plesk: https://www.namecheap.com/support/knowledgebase/article.aspx/9448/0/plesk-12
- (6) Don't forget to apply certificate in security section! (See step 7 of Plesk guide above)
- (A) Request IP addresses for reason: "SSL certifications" from Rackspace, and then change IP addresses in Plesk
-- Use webmaster@cjelectrical.co.uk in all email fields
- (7) In Plesk: To switch between SSL certificates: Hosting Settings > Website Scripting and Security
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// Purchase SSL: Create and print purchase order 
- Purchase Namecheap SSL using Credit Card on account
- Upload Namecheap receipt and print paper copy (get GBP cost as receipt is in $)
- Create New PO > Namecheap (supplier) > Add Line 'SSL 1 Yr Channel Name' Price...
-- Subtract 20% from purchase price £5.99: (5.99 / 1.2 = 4.99) -- (4.99 + (4.99 * 20% tax)) = £5.988
- Write Channel and PO number on printed receipt
- Request and complete Credit Card Ledger from Jackie
- Give Jackie completed ledger and receipts (slide in ledger plastic sleeve)
- Example [CJEPO78289/AC] Purchase Order Details for https://www.namecheap.com
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
- When requesting Rackspace to install SSL, give them the private key from Plesk

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| VIVALDI
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- vivaldi://chrome/settings/passwords

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| PHONE LOGIN
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Press a
- Type in number 242
- Press #
- Type in 2580
- Press #

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| WINDOWS/WORD 
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

SHORTCUTS: EXPLORER
- WIN + E = Open new explorer window
- CTRL + N = Open new window on same folder
- CTRL + SHIFT + N = Create new subfolder in current folder
- CTRL + W = Close current window 
- ALT + UP = Go up one level
- ALT + RIGHT = Go forward 
- ALT + LEFT = Go back 
- F2 (while folder/file is highlighted) = Rename
- TAB (while folder/file is being renamed) = Rename next

SHORTCUTS: CHARACTERS
- En-Dash = ALT-0150
- Em-Dash = ALT-0151

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| SUBLIME
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

SHORTCUTS
- CTRL + M = Jump to closing parentheses
- CTR + SHIFT + M = Select all within parentheses
- CTRL + L = Select line at cursor
- CTRL + D = Select next instance
- CTRL + SHIFT + D = Copy line and paste below
- CTRL + SHIFT + K = Delete current line
- CTRL + / = Comment selected
- CTRL + [ = Indent
- CTRL + ] = Outdent
- CTRL + SHIFT + UP = Move selected line
- CTRL + LEFT = Jump to the end of word 
- SHIFT + LEFT = Select next character
- CTRL + SHIFT + LEFT = Select word and next
- ALT + F3 = Select all instances of selected
- CTRL + SHIFT + V = Paste with original indentation
- CTRL + PGUP/PGDOWN = Cycle through tabs
- CTRL + R = Goto function in current file; in an unopened file: CTRL + P, then type @
- CTRL + ; = Goto word in current file; in an unopened file: CTRL + P, then type #
- CTRL + G = Goto line in current file; in an unopened file: CTRL + P, then type :
- CTRL + SHIFT + M = Select all contents of the current brackets (curly brackets, square brackets, parentheses)
- CTRL + F2	= Toggle Bookmark
- F2 = Next bookmark
- SHIFT + F2: Previous Bookmark
- CTRL + SHIFT + F2 = Clear bookmarks
- CTRL + KU	= Convert to upper case
- CTRL + KL	= Convert to lower case

- regex search using (.*): AddInput.*dev3.checkbox = search for string where checkbox follows AddInput

-- http://wesbos.com/sublime-text-5-visual-tweaks/
-- http://www.sublimetext.com/docs/2/multiple_selection_with_the_keyboard.html
-- http://sublime-text-unofficial-documentation.readthedocs.org/en/latest/reference/keyboard_shortcuts_win.html
-- https://d38dico4iqn2di.cloudfront.net/wp-content/uploads/2012/10/sublime_text_2_shortcuts_mac_printable_ractoon.pdf

TIDY SWITCH PROJECT LIST 
- http://sublimetexttips.com/switch-projects-without-browsing-in-sublime-text/

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GIT - ADD REPO
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- https://confluence.atlassian.com/display/BITBUCKET/Clone+your+Git+repository+and+add+source+files
- https://confluence.atlassian.com/bitbucket/clone-a-repository-223217891.html

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GIT - COMMANDS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- git init <directory> // create an empty git repository in the specified directory
- git init --bare <directory> // initialize an empty git repository, but omit the working directory; git init only needs to be executed once to create a central repository—developers typically don‘t use git init to create their local repositories; instead, they’ll usually use git clone to copy an existing repository onto their local machine; think of --bare as a way to mark a repository as a storage facility, opposed to a development environment; this means that for virtually all Git workflows, the central repository is bare, and developers local repositories are non-bare.
- git checkout master THEN git merge -X theirs dev // force merge of dev into master and favor dev if any conflicts
- git checkout develop THEN git merge -X ours master // force merge of master into dev and favor master if any conflicts
- git st // get status of current branch
- git add <file> // add file in cwd to staging area
- git add -A // add all files in cwd to staging area 
- git commit -m "<message>" // commit with message
- git commit -a -m "<message>" // commit all with a message
- git commit --amend // combine staged changes with previous commit and replace with resulting snapshot - running when nothing staged = edit the previous commit’s message without altering snapshot - never amend commits that have been pushed to a public repository: amended commits are actually entirely new commits, and the previous commit is removed from the project history
- git commit --amend -m "<message>" // edit previous commit message without adding staged changes to the commit
- git commit --amend --no-edit // after staging changes, amend previous commit with changes and use existing commit message (no-edit)

- git log --grep="<pattern>" // search log using <pattern>, which can be a plain string or a regular expression
- git fetch // fetches data from origin that we don't have *without* merging
- git pull // fetch latest changes from origin 
- git push // push local commits to remote version of current branch
- git checkout <branch> // checkout branch
- git checkout -b <branch> // create and checkout a new branch
- git merge <branch>// pull down remote branch and merge into local
- git push origin :branch // delete remote branch
- git checkout - // checkout the previous branch worked on
- git branch -d branch // delete branch
- git checkout –b <branch> // create branch
- git checkout -b <branch> master // create branch based on master
- git branch –d <branch> // delete branch
- git branch -m <branch> // rename branch
- git checkout a1e8fb5 hello.py // get old version of hello.py from commit a1e8fb5 (will apply to cwd) 
- git checkout HEAD hello.py // get back (apply to cwd) the most recent version of hello.py
- git checkout HEAD~2 // move head back two commits (warning: detaches the head, create new branch if working from new (~2) node)
- git checkout HEAD foo.py // discard unstaged changes to foo.py (similar behavior to git reset HEAD --hard, but it operates only on a specified file)

Command			Scope			Common use cases
-------------------------------------------------------------------------------------------------------
- git reset		Commit-level	Discard commits in a private branch or throw away uncommited changes
- git reset		File-level		Unstage a file
- git checkout	Commit-level	Switch between branches or inspect old snapshots
- git checkout	File-level		Discard changes in the working directory
- git revert	Commit-level	Undo commits in a public branch
- git revert	File-level		(N/A)

> Reverting vs. Resetting: 
> You can also think of git revert as a tool for undoing committed changes, while git reset HEAD is for undoing uncommitted changes. git revert should be used to undo changes on 
> a public branch, and git reset should be reserved for undoing changes on a private branch. It's important to understand that git revert undoes a single commit—it does not “revert” 
> back to the previous state of a project by removing all subsequent commits. 
> In Git, this is actually called a reset, not a revert...if you wanted to undo an old commit with git reset, you would have to remove all of the commits that occurred after the target commit, 
> remove it, then re-commit all of the subsequent commits. Needless to say, this is not an elegant undo solution. Whereas reverting is designed to safely undo a public commit, git reset is 
> designed to undo local changes. Because of their distinct goals, the two commands are implemented differently: resetting completely removes a changeset, whereas reverting maintains the original 
> changeset and uses a new commit to apply the undo. Don’t Reset Public History: You should never use git reset <commit> when any snapshots after <commit> have been pushed to a public repository. 
> After publishing a commit, you have to assume that other developers are reliant upon it.

- git revert <commit> // paste in hash value of the unwanted commit - will create and apply a new reversed/(undo changes) commit to leave previous commit in history
- git revert HEAD // revert to before the most recent commit

- git reset // dangerous: should only be used to undo local changes — you should never reset snapshots that have been shared with other developers
- git reset // unstages all files without git overwriting any changes, giving you the opportunity to re-build the staged snapshot from scratch
- git reset <filename> // remove file from staging area but leave cwd unchanged - use to remove file added to staging area by mistake
- git reset --hard // reset staging area to most recent commit and *overwrite* all changes to cwd - obliterates all uncommitted changes
- git reset <commit> // reset staging area to most recent commit leaving cwd alone - files can be re-committed using more atomic snapshots
- git reset --hard THEN git clean -df // dismiss merge conflicts (-df = remove untracked files and untracked directories)
- git reset --hard HEAD // unstage and throw away all changes in cwd
- git reset --mixed HEAD // unstage all changes but leave in cwd

> The git clean command is often executed in conjunction with git reset --hard. Remember that resetting only affects tracked files, so a separate command is required for cleaning up untracked ones. 
> Combined, these two commands let you return the working directory to the exact state of a particular commit.

- git clean -n // show which files would be removed from cwd 
- git clean -f // execute clean (f = force check: will not remove untracked folders or files specified by .gitignore)
- git clean -f <path> // remove untracked files, but limit the operation to the specified path
- git clean -df // remove untracked files and untracked directories from the current directory
- git clean -xf // remove untracked files from the cwd as well as any files usually ignored

- gitk <folder> or <file> // look at all committed changes on specified file
- gitk --all // view commit history of all branches

- How to stash untracked files with git: Just run git config --global alias.stashu "stash save -u" and then you can do: git stashu command (only available past  version 1.7.7+)

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GIT - CHERRY-PICKING + MERGING + REBASING - https://www.atlassian.com/git/tutorials/comparing-workflows/centralized-workflow
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- git log // get hash of commit
- git checkout <branch> // switch to branch to apply cherry-pikced commit to
- git cherry-pick f269eb787d10de0275cd2297377cf455c67aaec5 // apply cherry-picked commit

> Rebasing works by transferring each local commit to the updated master branch one at a time. This means that you catch merge conflicts on a commit-by-commit basis rather than resolving all of them in one massive merge commit. This keeps your commits as focused as possible and makes for a clean project history. In turn, this makes it much easier to figure out where bugs were introduced and, if necessary, to roll back changes with minimal impact on the project. If Mary and John are working on unrelated features, it’s unlikely that the rebasing process will generate conflicts. But if it does, Git will pause the rebase at the current commit and output the following message, along with some relevant instructions: CONFLICT (content): Merge conflict in <some-file>

> The great thing about Git is that anyone can resolve their own merge conflicts. In our example, Mary would simply run a git status to see where the problem is. Conflicted files will appear in the Unmerged paths section:
- # Unmerged paths:
- # (use "git reset HEAD <some-file>..." to unstage)
- # (use "git add/rm <some-file>..." as appropriate to mark resolution)
- #
- # both modified: <some-file>

> Then, she’ll edit the file(s) to her liking. Once she’s happy with the result, she can stage the file(s) in the usual fashion and let git rebase do the rest:
- git add <some-file>
- git rebase --continue

> And that’s all there is to it. Git will move on to the next commit and repeat the process for any other commits that generate conflicts.
> If you get to this point and realize and you have no idea what’s going on, don’t panic. Just execute the following command and you’ll be right back to where you started before you ran.
- git rebase --abort

// pull from master and rebase our changes at HEAD of master
- git pull --rebase origin master

> After she’s done synchronizing with the central repository, Mary will be able to publish her changes successfully:
- git push origin master

# rebasing process:
- git checkout new-feature
- git rebase master // this moves new-feature to the tip of master, which lets us do a standard fast-forward merge from master:
- git checkout master
- git merge new-feature

- check out the branch you wish to merge into and then run the git merge command...
# when on develop.... git checkout master (switch to master before merging)
# git merge develop (merge development branch changes into master branch)
- git push (after merging... update remote branch with local branch)
# when on develop... git merge master (update dev branch with master) 

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GIT - STASHING 
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- git stash list
- git stash show stash@{0} // what is in the most recent stash?
- git stash -u save "<message>" // put aside items (tracked and untracked -u) before beginning work on separate files or before merging outside changes
- git stash apply // apply stash contents to branch and keep it in stash) 
- git stash pop // remove/extract/pop from stash and apply to branch
- git stash drop stash@{0} // delete most recent stash
- git stash clear // clear ALL stashes
- git stash branch add-style stash@{1} // create new branch from stash
- git stash save "A meaningful message"

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GIT - HELP
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

https://www.atlassian.com/git/tutorials/
http://git-scm.com/videos
http://git-scm.com/book/en/Git-Branching-Rebasing
http://git-scm.com/book/en/Git-Tools-Stashing
http://git-scm.com/download/mac
https://www.atlassian.com/dms/wac/images/landing/git/atlassian_git_cheatsheet.pdf
https://confluence.atlassian.com/display/BITBUCKET/Bitbucket+Documentation+Home
https://www.atlassian.com/git/
http://www.sourcetreeapp.com/download/
http://danbarber.me/using-git-for-deployment/
http://joemaller.com/990/a-web-focused-git-workflow/
https://www.digitalocean.com/community/tutorials/how-to-set-up-automatic-deployment-with-git-with-a-vps
http://think-like-a-git.net/sections/rebase-from-the-ground-up/cherry-picking-explained.html
https://ariejan.net/2010/06/10/cherry-picking-specific-commits-from-another-branch/

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GIT DEPLOYMENT SYSTEM
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Copy existing project (.git)
- Change host and db logins  (Live.php)
- Add Deployment.php to Config/.gitignore
- Search repo for "deploy"-related commits
- Set up Deploy folder (Hook.php)
- use Putty (ssh) to test and monitor scripts
- Change write permissions on (Deploy ?) folder
- Set up scheduled task /Crons/DeployPull.php 

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| CRONS
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Open putty.exe (Terminal)...
- Login into a domain e.g. Host: elementshop.co.uk / Login: elementshop / elementshop@elementshop.co.uk's password: 3lectr0N
- Dial the cron script: php dev.elementshop.co.uk/cron/fraud_screened_sage.php
- PLESK: Home > Subscriptions > elementshop.co.uk > Websites & Domains > System Users > Scheduled Tasks >
-- Example Cron Command: php /var/www/vhosts/elementshop.co.uk/dev.elementshop.co.uk/cron/fraud_screened_sage.php
-- Running Cron on live site: httpdocs/cron/integrate_sage.php

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
|  CLI / SSH / PUTTY / TERMINAL
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- UP = Repeat last cmd
- Right-Click = Paste 
- CTRL-C = Kill script
- printf("%s %s \r\n", $dataItemItem->getTag(), $dataItemItem->getContent());

- http://code.tutsplus.com/tutorials/7-simple-and-useful-command-line-tips--net-11608 
- http://code.tutsplus.com/articles/10-terminal-commands-that-will-boost-your-productivity--net-14105
- http://code.tutsplus.com/tutorials/the-command-line-is-your-best-friend--net-30362

- sudo -- superuser powers for single command
- cp employee.sql /var/www/vhosts/elementshop.co.uk/httpdocs // copy file from pwd to another dir on same server (used: /home/rack/restore_160112-04046/employee_data)
- scp username@hostname:/path/to/remote/file /local/path/to/copy/to/ // secure copy remote file to local file
- grep -iR myFunction ./ 00 exclude-dir=.svn" -- search current directory (case insenstitive and recursive dirs and exclude .svn dir) for myFunction
- cd - -- go to previous dir
- tar xvzf download.tar.gz // x extracting archive, v verbose (give us some output), z unzips the file, f passing the name of the archive file
- gzip something.txt
- gzip -d something.txt.gz // decompress
- 
$ cp originalFile newFile
$ vim newFile #edit newFile
$ diff originalFile newFile
1c1
< This is a sentence.
---
> This is a short sentence.
$ diff originalFile newFile > changes.patch
- patch originalFile2 changes.patch
- less shoppingList.txt // open in lsss (k and j, b and f to scroll/page; q to exit)

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| GIT - HOUSEKEEPING
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

REFRESH DEV WITH MASTER TO CLEAN UP...
 - http://elementshop.co.uk/Deploy/Hook.php / http://dev.elementshop.co.uk/Deploy/Hook.php (or any project)

PER TASK...
- Commit regularly (even after small changes) so that mistakes can be rewound

--BEGINNING OF DAY-- (NO NEED; CRON DOES AUTOMAGICALLY)
// Drag down unintegrated changes from master commits
-- Browser: domain.co.uk/Deploy/Hook.php -- writes a deploy file if doesn't exist
-- SSH: cd dev.domain.co.uk
-- SSH: cd cron
-- SSH: php DeployReset.php
-- SSH: php DeployPull.php 

WHEN NEEDED...
// Drag down unintegrated changes from master commits
-- SSH: main directory (admin, cache, config, etc.)
-- git reset --hard
-- git clean -df
-- git pull
-- “Current branch is up to date”

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ACCOUNTING
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

- Credit is for the source of value, debit is for the use (placement/expenditure) of that value.
- The source account for the transaction is credited and the destination account is debited.

- Assets + Expenses = Equity/Capital + Liabilities + Income [A + Ex = E + L + I]
-- Debit is increased for Assets and Expenses; Credit is decreased
-- Credit is increased for Equity/Capital, Liability, Income; Debit is decreased

- ACCOUNT TYPE 		| DEBIT | CREDIT
------------------------------------
- Asset 	   		|+ 		|-
- Expenses 	   		|+ 		|-
- Equity/Capital 	|-		|+
- Liability	   		|-		|+
- Income	   		|- 		|+
------------------------------------

https://www.quora.com/How-can-I-better-understand-debit-and-credit
http://www.principlesofaccounting.com/chapter2/chapter2.html
https://en.wikipedia.org/wiki/Debits_and_credits

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| MAC
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------
- How to view hidden folders using Terminal
Open Terminal
Run the following script:  
$ defaults write com.apple.Finder AppleShowAllFiles true
$ killall Finder
If you want to switch it back just change the true to false.

----------------------------------------------------------------------------
- How to edit the Hosts file

The best way to work with the Hosts file is using the Terminal application found in your Mac's Utilities folder. You'll need to know the IP address of the device you'd like to send your Mac to, or the domain names you're trying to keep your Mac away from.

Double-click Terminal.
type sudo nano /etc/hosts then hit return.
You'll be asked for your password. Enter your admin password.

If you want to add a new device or domain, move the cursor using the cursor keys and position it after the text you see, then begin typing. If you're mapping a particular IP address on your local network to a domain, you can type the IP address, hit tab, then type the domain name.

Conversely, if you'd like to make sure a web URL doesn't go to its intended site — if you're trying to keep your Mac away from certain sites, use "127.0.0.1." That'll map it back to your Mac. Even if your Mac is assigned a different IP address by its router, 127.0.0.1 defaults to the local machine thanks to the default settings in that hose file.

Once you're done, hold down the control and O keys to save the file, then control and X to exit.

Back at the command line, type sudo killall -HUP mDNSResponder then type return. That will flush your Mac's DNS cache, so it doesn't get confused by any changes you've made to the Hosts file.

Don't forget you've modified the Hosts file, because at some point you may need to undo the changes you've made in order to keep your Mac working right.

http://www.imore.com/how-edit-your-macs-hosts-file-and-why-you-would-want
-------------------------------------------------------------------------

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ABSURD
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

> "Out of love for mankind, and out of despair at my embarrassing situation, seeing that I had accomplished nothing and was unable to make anything easier than it had already been made, and moved by a genuine interest in those who make everything easy, I conceived it as my task to create difficulties everywhere." ~ Søren Kierkegaard, Concluding Unscientific Postscript

> "Don't you know that a midnight hour comes when everyone has to take off his mask? Do you think life always lets itself be trifled with? Do you think you can sneak off a little before midnight to escape this?" ~ Søren Kierkegaard, Either/Or

> "If you marry, you will regret it; if you do not marry, you will also regret it; if you marry or do not marry, you will regret both; Laugh at the world’s follies, you will regret it, weep over them, you will also regret that; laugh at the world’s follies or weep over them, you will regret both; whether you laugh at the world’s follies or weep over them, you will regret both. Believe a woman, you will regret it, believe her not, you will also regret that; believe a woman or believe her not, you will regret both; whether you believe a woman or believe her not, you will regret both. Hang yourself, you will regret it; do not hang yourself, and you will also regret that; hang yourself or do not hang yourself, you will regret both; whether you hang yourself or do not hang yourself, you will regret both. This, gentlemen, is the sum and substance of all philosophy." ~ Søren Kierkegaard, Either/Or

> "When I was very young and in the cave of Trophonius I forgot to laugh. Then, when I got older, when I opened my eyes and saw the real world, I began to laugh and I haven’t stopped since. I saw that the meaning of life was to get a livelihood, that the goal of life was to be a High Court judge, that the bright joy of love was to marry a well-off girl, that the blessing of friendship was to help each other out of a financial tight spot, that wisdom was what the majority said it was, that passion was to give a speech, that courage was to risk being fined 10 rix-dollars, that cordiality was to say ‘You’re welcome’ after a meal, and that the fear of God was to go to communion once a year. That’s what I saw. And I laughed." ~ Soren Kierkegaard, Either/Or

> "You have already grasped that Sisyphus is the absurd hero. He is, as much through his passions as through his torture. His scorn of the gods, his hatred of death, and his passion for life won him that unspeakable penalty in which the whole being is exerted toward accomplishing nothing. This is the price that must be paid for the passions of this earth. Nothing is told us about Sisyphus in the underworld. Myths are made for the imagination to breathe life into them. As for this myth, one sees merely the whole effort of a body straining to raise the huge stone, to roll it, and push it up a slope a hundred times over; one sees the face screwed up, the cheek tight against the stone, the shoulder bracing the clay-covered mass, the foot wedging it, the fresh start with arms outstretched, the wholly human security of two earth-clotted hands. At the very end of his long effort measured by skyless space and time without depth, the purpose is achieved. Then Sisyphus watches the stone rush down in a few moments toward the lower world whence he will have to push it up again toward the summit. He goes back down to the plain." ~ Albert Camus, The Myth of Sisyphus

> "It is during that return, that pause, that Sisyphus interests me. A face that toils so close to stones is already stone itself! I see that man going back down with a heavy yet measured step toward the torment of which he will never know the end. That hour like a breathing-space which returns as surely as his suffering, that is the hour of consciousness. At each of those moments when he leaves the heights and gradually sinks toward the lairs of the gods, he is superior to his fate. He is stronger than his rock." ~ Albert Camus, The Myth of Sisyphus

> "If this myth is tragic, that is because its hero is conscious. Where would his torture be, indeed, if at every step the hope of succeeding upheld him? The workman of today works everyday in his life at the same tasks, and his fate is no less absurd. But it is tragic only at the rare moments when it becomes conscious. Sisyphus, proletarian of the gods, powerless and rebellious, knows the whole extent of his wretched condition: it is what he thinks of during his descent. The lucidity that was to constitute his torture at the same time crowns his victory. There is no fate that can not be surmounted by scorn." ~ Albert Camus, The Myth of Sisyphus

> "If the descent is thus sometimes performed in sorrow, it can also take place in joy. This word is not too much. Again I fancy Sisyphus returning toward his rock, and the sorrow was in the beginning. When the images of earth cling too tightly to memory, when the call of happiness becomes too insistent, it happens that melancholy arises in man's heart: this is the rock's victory, this is the rock itself. The boundless grief is too heavy to bear. These are our nights of Gethsemane. But crushing truths perish from being acknowledged. Thus, Edipus at the outset obeys fate without knowing it. But from the moment he knows, his tragedy begins. Yet at the same moment, blind and desperate, he realizes that the only bond linking him to the world is the cool hand of a girl. Then a tremendous remark rings out: "Despite so many ordeals, my advanced age and the nobility of my soul make me conclude that all is well." Sophocles' Edipus, like Dostoevsky's Kirilov, thus gives the recipe for the absurd victory. Ancient wisdom confirms modern heroism." ~ Albert Camus, The Myth of Sisyphus

> "One does not discover the absurd without being tempted to write a manual of happiness. "What! by such narrow ways?" There is but one world, however. Happiness and the absurd are two sons of the same earth. They are inseparable. It would be a mistake to say that happiness necessarily springs from the absurd. Discovery. It happens as well that the feeling of the absurd springs from happiness. "I conclude that all is well," says Oedipus, and that remark is sacred. It echoes in the wild and limited universe of man. It teaches that all is not, has not been, exhausted. It drives out of this world a god who had come into it with dissatisfaction and a preference for futile suffering. It makes of fate a human matter, which must be settled among men." ~ Albert Camus, The Myth of Sisyphus

> "All Sisyphus' silent joy is contained therein. His fate belongs to him. His rock is a thing. Likewise, the absurd man, when he contemplates his torment, silences all the idols. In the universe suddenly restored to its silence, the myriad wondering little voices of the earth rise up. Unconscious, secret calls, invitations from all the faces, they are the necessary reverse and price of victory. There is no sun without shadow, and it is essential to know the night. The absurd man says yes and his efforts will henceforth be unceasing. If there is a personal fate, there is no higher destiny, or at least there is, but one which he concludes is inevitable and despicable. For the rest, he knows himself to be the master of his days. At that subtle moment when man glances backward over his life, Sisyphus returning toward his rock, in that slight pivoting he contemplates that series of unrelated actions which become his fate, created by him, combined under his memory's eye and soon sealed by his death. Thus, convinced of the wholly human origin of all that is human, a blind man eager to see who knows that the night has no end, he is still on the go. The rock is still rolling." ~ Albert Camus, The Myth of Sisyphus

> "I leave Sisyphus at the foot of the mountain! One always finds one's burden again. But Sisyphus teaches the higher fidelity that negates the gods and raises rocks. He too concludes that all is well. This universe henceforth without a master seems to him neither sterile nor futile. Each atom of that stone, each mineral flake of that night filled mountain, in itself forms a world. The struggle itself toward the heights is enough to fill a man's heart. One must imagine Sisyphus happy." ~ Albert Camus, The Myth of Sisyphus

> "Revolt … is a constant confrontation between man and his own obscurity … [It] is certainty of a crushing fate, without the resignation to accompany it." ~ Albert Camus, The Myth of Sisyphus

> "[R]evolt gives value to life. … To a man devoid of blinders, there is no finer sight than that of the intelligence at grips with a reality that transcends it." ~ Albert Camus, The Myth of Sisyphus

> The contradiction must be lived; reason and its limits must be acknowledged, without false hope. However, the absurd can never be accepted: it requires constant confrontation, constant revolt.