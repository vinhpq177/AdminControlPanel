<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!-- Chart -->
    <script type="text/javascript" src="http://www.google.com/jsapi"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="<c:url value="/js/attc.googleCharts.js"/>"></script>
	<link rel="stylesheet" type="text/css" href="<c:url value="/css/attc.css"/>">	
<!-- End Chart -->

<!-- paging -->
    <script src="<c:url value="/js/smartpaginator.js"/>" type="text/javascript"></script>
    <link href="<c:url value="/css/smartpaginator.css"/>" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#green').smartpaginator({ totalrecords: 8, recordsperpage: 5, datacontainer: 'AttendancePercentages', dataelement: 'tr', initval: 0, next: 'Next', prev: 'Prev', first: 'First', last: 'Last', theme: 'black' });
        });
    </script>
<!-- end paging -->

<div class="panel-wrapper">
	<!-- Tab Panel -->
	<div class="panel">
		<div class="title">
			<h4>Viz created/user info</h4>
			<div class="collapse">collapse</div>
		</div>
		<div class="content">
			<!-- ## Panel Content  -->
			<table 
	    		title="Attendance Percentages" 
	    		id="AttendancePercentages" 
	    		summary="pieDescription" 
	    		data-attc-createChart="true"
	    		data-attc-colDescription="pieDescription" 
	    		data-attc-colValues="pieValues" 
	    		data-attc-location="AttendancePercentagesPie" 
	    		data-attc-hideTable="false" 
	    		data-attc-type="column"
	    		data-attc-googleOptions='{"is3D":true}'
	    		data-attc-controls='{"showHide":true,"create":true,"chartType":true}'>
			<thead>
				<tr>
					<th id="pieDescription">Day</th>
					<th id="pieValues">view /day</th>
					<th>% /day</th>
					<th>Other</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Thu Mar 21, 2013</td>
					<td>405</td>
					<td>89</td>
					<td>5</td>
				</tr>
				<tr>
					<td>Fri Mar 22, 2013</td>
					<td>1</td>
					<td>0</td>
					<td>4</td>
				</tr>
				<tr>
					<td>Sat Mar 23, 2013</td>
					<td>36</td>
					<td>7</td>
					<td>3</td>
				</tr>
				<tr>
					<td>Sun Mar 24, 2013</td>
					<td>1</td>
					<td>0</td>
					<td>2</td>
				</tr>
				<tr>
					<td>Mon Mar 25, 2013</td>
					<td>10</td>
					<td>2</td>
					<td>1</td>
				</tr>
				<tr>
					<td>Tue Mar 26, 2013</td>
					<td>10</td>
					<td>2</td>
					<td>1</td>
				</tr>
				<tr>
					<td>Web Mar 27, 2013</td>
					<td>10</td>
					<td>2</td>
					<td>1</td>
				</tr>
				<tr>
					<td>Thu Mar 28, 2013</td>
					<td>10</td>
					<td>2</td>
					<td>1</td>
				</tr>
			</tbody>
		</table>	
		<div id="green" style="margin: auto;"></div>
			<!-- ## / Panel Content  -->
		</div>
	</div>
	<!-- End Tab Panel -->
	<div class="shadow"></div>
</div>

<div class="panel-wrapper">
	<!-- Table Panel -->
	<div class="panel">
		<div class="title">
			<h4>Statistic</h4>
			<div class="collapse" id="387">collapse</div>
		</div>
		<div class="content">
			<!-- ## Panel Content  -->
			<div id="AttendancePercentagesPie"></div>
			<!-- ## / Panel Content  -->
		</div>
	</div>
	<!-- End Table Panel -->
	<div class="shadow"></div>
</div>

