<?php
	header("Content-Type: application/json; charset=UTF-8");
	header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: GET, PUT, POST, DELETE, OPTIONS');

	$type = '';

	if (isset($_GET['type'])) {
		$type = $_GET['type'];
	}

	$category_list = array();

	switch ($type) {
		case 'man':
			$category_list[] = array('value' => "man01", 'text' => "남성정장");
			$category_list[] = array('value' => "man02", 'text' => "남성캐쥬얼");
			$category_list[] = array('value' => "man03", 'text' => "아우터");
			$category_list[] = array('value' => "man04", 'text' => "스포츠의류");
			$category_list[] = array('value' => "man05", 'text' => "구두/운동화");
			$category_list[] = array('value' => "man06", 'text' => "악세사리/가방");
			break;
		case 'woman':
			$category_list[] = array('value' => "woman01", 'text' => "여성정장");
			$category_list[] = array('value' => "woman02", 'text' => "여성캐쥬얼");
			$category_list[] = array('value' => "woman03", 'text' => "아우터");
			$category_list[] = array('value' => "woman04", 'text' => "스포츠의류");
			$category_list[] = array('value' => "woman05", 'text' => "구두/운동화");
			$category_list[] = array('value' => "woman06", 'text' => "악세사리/가방");
			break;
		case 'it':
			$category_list[] = array('value' => "it01", 'text' => "핸드폰/태블릿");
			$category_list[] = array('value' => "it02", 'text' => "PC/노트북");
			$category_list[] = array('value' => "it03", 'text' => "TV/냉장고/세탁기");
			$category_list[] = array('value' => "it04", 'text' => "소형가전");
			break;
	}

	echo json_encode(array("item" => $category_list), JSON_UNESCAPED_UNICODE);
?>