<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<script src="./assets/js/mapdata.js"></script>
<script src="./assets/js/countrymap.js"></script>
<title>Country Map Example</title>
</head>
<style type="text/css">
#dept {
	height: 1000px;
}

div #map_inner {
	width:1000px;
	height: 1000px;
}

.legend {
	color: black;
	width: 300px;
	font-family: arial;
	font-size: 14px;
}

.legend_color {
	display: table;
	width: 100%;
	background: white;
	list-style: none;
	margin: 0px;
	padding: 0px;
}

.legend_color li {
	width: 20%;
	height: 20px;
	display: table-cell;
}

.legend_label {
	display: table;
	width: 100%;
	padding: 0px;
	padding-left: 10%;
	padding-right: 10%;
	list-style: none;
	margin: 0px;
	box-sizing: border-box;
}

.legend_label li {
	width: 25%;
	height: 20px;
	display: table-cell;
	text-align: center;
}
</style>

<body>
<script>
console.log('${jsonList}')
console.log('${output}')
console.log('${gson}')
</script>
	<h1>지역별 환자수</h1>
	<div id="map"></div>

	<div class="legend">
		<ul class="legend_label">
			<li>10</li>
			<li>100</li>
			<li>1,000</li>
			<li>1,0000</li>
		</ul>
		<ul class="legend_color">
			<li style="background-color: #ff6683"></li>
			<li style="background-color: #ff335a"></li>
			<li style="background-color: #ff0031"></li>
			<li style="background-color: #cc0027"></li>
			<li style="background-color: #99001d"></li>
		</ul>
	</div>
</body>

</html>