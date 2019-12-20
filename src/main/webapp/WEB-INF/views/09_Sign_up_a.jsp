<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
  <head>
     <jsp:include page="./assets/inc/head.jsp" />
     <jsp:include page="./assets/inc/remote_css.jsp" />
     
     <style type="text/css">
     .container {
    		position: relative;
    		text-align: center;
    	}
    	
    	.agrment1 {
    		overflow:scroll; 
    		width:1000px; 
    		height:400px; 
    		padding:10px; 
    		background-color:#eee;
    		position: absolute;
    		top: 100px;
    		left: 85px;
    		margin:auto;
    		text-align: left;
    	}
  
    	.agrment2 {
    		overflow:scroll; 
    		width:1000px; 
    		height:400px; 
    		padding:10px; 
    		background-color:#eee;
    		position: absolute;
    		top: 670px;
    		left: 85px;
    		text-align: left;
    	}
    	
    	.agrtitle1 {
    		position: absolute;
    		top: 30px;
    		left: 85px;
    	}
    	
    	.agrtitle2 {
    		position: absolute;
    		top: 600px;
    		left: 85px;
    	}
    	
    	.agrmsg1-1 {
    		position: absolute;
    		top: 520px;
    		left: 85px;
    	}
    	
    	.agrmsg2-1 {
    		position: absolute;
    		top: 1090px;
    		left: 85px;
    	}
    	
    	.confirm {
    		width: 1170px;
    		height: 100px;
    		position: absolute;
    		top: 1200px;
    		text-align: center;
    	}
    	
    	.all {
    		position: absolute;
    		top: 1130px;
    		left: 85px;
    		display: inline-block;
    	}
     
     </style>
  </head>
  
  <body>
  <jsp:include page="./assets/inc/top.jsp" />
	<div class="container"style="width: 1170px; height:1300px;">
	 
	<div class="agrtitle1"><h3><strong>이용약관</strong></h3></div>
	<div class="agrment1">
		 제 1장 총칙<br/><br/>
	
		제 1 조 (목적)<br/>
		
		본 약관은 파인드닥터에서 운영하는 사이트(이하 "당 사이트") 관련 서비스(이하 "서비스")의 이용조건 및 절차, 이용자와 당 사이트의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.<br/><br/>
		
		제 2 조 (약관의 효력과 변경)<br/>
		
		1. 당 사이트는 귀하가 본 약관 내용에 동의하는 것을 조건으로 귀하에게 서비스를 수집 및 제공할 것이며, 귀하가 본 약관의 내용에 동의하는 경우, 당 사이트의 서비스 제공 행위 및 귀하의 서비스 사용 행위에는 본 약관이 우선적으로 적용될 것입니다.<br/>
		2. 당 사이트는 본 약관을 사전 고지 없이 변경할 수 있으며, 변경된 약관은 당 사이트 내에 공지함으로써 이용자가 직접 확인하도록 할 것입니다. 이용자가 변경된 약관에 동의하지 아니하는 경우, 이용자는 본인의 회원등록을 취소(회원탈퇴)할 수 있으며, 계속 사용의 경우는 약관 변경에 대한 동의로 간주됩니다. 변경된 약관은 공지와 동시에 그 효력이 발생됩니다.<br/><br/>
		
		제 3 조 (약관외 준칙)<br/>
		
		1. 본 약관은 당 사이트가 제공하는 서비스에 관한 이용규정 및 별도 약관과 함께 적용됩니다.<br/>
		2. 본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신윤리위원회심의규정, 정보통신 윤리강령, 저작권법 및 기타 관련 법령의 규정에 의합니다.<br/><br/>
		
		제 4 조 (용어의 정의)<br/>
		
		본 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br/>
		1. 이용자: 본 약관에 따라 당 사이트가 제공하는 서비스를 받는 자.<br/>
		2. 가입: 당 사이트가 제공하는 신청서 양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용계약을 완료시키는 행위<br/>
		3. 회원: 당 사이트에 개인 정보를 제공하여 회원 등록을 한 자로서, 당 사이트의 정보를 제공받으며, 당 사이트가 제공하는 서비스를 이용할 수 있는 자.<br/>
		4. 회원ID: 영어소문자 또는 영어소문자와 숫자를 결합한 4자리 이상 10자리 미만의 조합.<br/>
		5. 비밀번호: 이용자와 회원ID가 일치하는지를 확인하고 통신상의 자신의 비밀보호를 위하여 이용자 자신이 선정한 문자와 숫자의 조합.<br/>
		6. 탈퇴: 회원이 이용계약을 종료 시키는 행위<br/>
		7. 본 약관에서 정의하지 않은 용어는 개별서비스에 대한 별도 약관 및 이용규정에서 정의합니다.<br/>
		
		제 2장 서비스의 제공 및 이용<br/><br/>
		
		제 5조 (이용계약체결)<br/>
		
		①이용계약은 "회원"이 되고자 하는 자(이하 "가입신청자")가 약관의 내용에 대하여 동의를 한 다음 회원가입신청을 하고 "파인드닥터"가 이러한 신청에 대하여 승낙함으로써 체결됩니다.<br/>
		②"파인드닥터"는 "가입신청자"의 신청에 대하여 "서비스" 이용을 승낙함을 원칙으로 합니다. 다만, "파인드닥터"는 다음 각 호에 해당하는 신청에 대하여는 승낙을 하지 않거나 사후에 이용계약을 해지할 수 있습니다.<br/>
		1.가입신청자가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 단 "파인드닥터"의 회원 재가입 승낙을 얻은 경우에는 예외로 함.<br/>
		2.실명이 아니거나 타인의 명의를 이용한 경우<br/>
		3.허위의 정보를 기재하거나, "파인드닥터"가 제시하는 내용을 기재하지 않은 경우<br/>
		4.응급의료와 관련된 업무를 수행하지 않는 경우<br/>
		5.이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우<br/>
		③제1항에 따른 신청에 있어 "파인드닥터"는 "회원"의 종류에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있습니다.<br/>
		④"파인드닥터"는 서비스관련설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는 승낙을 유보할 수 있습니다.<br/>
		⑤제2항과 제4항에 따라 회원가입신청의 승낙을 하지 아니하거나 유보한 경우, "파인드닥터"는 원칙적으로 이를 가입신청자에게 알리도록 합니다.<br/>
		⑥이용계약의 성립 시기는 "파인드닥터"가 가입완료를 신청절차 상에서 표시한 시점으로 합니다.<br/><br/>
		
		제 6 조 (위원회의 개인정보보호 의무 및 회원정보의 변경)<br/>
		
		①"파인드닥터"는 "개인정보보호법" 등 관계 법령이 정하는 바에 따라 "회원"의 개인정보를 보호하기 위해 노력합니다. 개인정보의 보호 및 사용에 대해서는 관련법 및 "파인드닥터"의 개인정보취급방침이 적용됩니다. 다만, "파인드닥터"의 공식 사이트 이외의 링크된 사이트에서는 "파인드닥터"의 개인정보취급방침이 적용되지 않습니다.<br/>
		②"회원"은 개인정보관리화면을 통하여 언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 다만, 서비스 관리를 위해 필요한 실명, 아이디 등은 수정이 불가능합니다.<br/>
		③"회원"은 회원가입신청 시 기재한 사항이 변경되었을 경우 온라인으로 수정을 하거나 전자우편 기타 방법으로 "파인드닥터"에 대하여 그 변경사항을 통지하여야 합니다.<br/>
		④제3항의 변경사항을 "파인드닥터"에 알리지 않아 발생한 불이익에 대하여 "파인드닥터"는 책임지지 않습니다.<br/><br/>
		
		제 7 조 (“회원”의 정보보안에 대한 의무)<br/>
		
		①"회원"의 "아이디"와 "비밀번호"에 관한 관리책임은 "회원"에게 있으며, 이를 제3자가 이용하도록 하여서는 안 됩니다.<br/>
		②"파인드닥터"는 "회원"의 "아이디"가 개인정보 유출 우려가 있거나, 반사회적 또는 미풍양속에 어긋나거나 "파인드닥터" 및 "파인드닥터"의 운영자로 오인한 우려가 있는 경우, 해당 "아이디"의 이용을 제한할 수 있습니다.<br/>
		③"회원"은 "아이디" 및 "비밀번호"가 도용되거나 제3자가 사용하고 있음을 인지한 경우에는 이를 즉시 "파인드닥터"에 통지하고 "파인드닥터"의 안내에 따라야 합니다.<br/>
		④제3항의 경우에 해당 "회원"이 "파인드닥터"에 그 사실을 통지하지 않거나, 통지한 경우에도 "파인드닥터"의 안내에 따르지 않아 발생한 불이익에 대하여 "파인드닥터"는 책임지지 않습니다.<br/><br/>
		
		제 8 조 (서비스 이용시간)<br/>
		
		1. 서비스 이용시간은 당 사이트의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간을 원칙으로 합니다.<br/>
		2. 제1항의 이용시간은 정기점검 등의 필요로 인하여 당 사이트가 정한 날 또는 시간은 예외로 합니다.<br/><br/>
		
		제 9 조 (서비스의 중지 및 정보의 저장과 사용)<br/>
		
		1. 귀하는 당 사이트 서비스에 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 국가의 비상사태, 정전, 당 사이트의 관리 범위 외의 서비스 설비 장애 및 기타 불가항력에 의하여 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의 손실이 있을 경우에 당 사이트는 관련 책임을 부담하지 아니합니다.<br/>
		2. 당 사이트가 정상적인 서비스 제공의 어려움으로 인하여 일시적으로 서비스를 중지하여야 할 경우에는 서비스 중지 1주일 전의 고지 후 서비스를 중지할 수 있으며, 이 기간 동안 귀하가 고지내용을 인지하지 못한 데 대하여 당 사이트는 책임을 부담하지 아니합니다. 부득이한 사정이 있을 경우 위 사전 고지기간은 감축되거나 생략될 수 있습니다. 또한 위 서비스 중지에 의하여 본 서비스에 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의 손실이 있을 경우에 대하여도 당 사이트는 책임을 부담하지 아니합니다.<br/>
		3. 당 사이트의 사정으로 서비스를 영구적으로 중단하여야 할 경우 제 2 항에 의거합니다. 다만, 이 경우 사전 고지기간은 1개월로 합니다.<br/>
		4. 당 사이트는 사전 고지 후 서비스를 일시적으로 수정, 변경 및 중단할 수 있으며, 이에 대하여 귀하 또는 제3자에게 어떠한 책임도 부담하지 아니합니다.<br/>
		5. 당 사이트는 이용자가 본 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스 사용을 제한 및 중지할 수 있습니다. 이 경우 당 사이트는 위 이용자의 접속을 금지할 수 있습니다.<br/><br/>
		
		제 10 조 (서비스의 변경 및 해지)<br/>
		
		1. 당 사이트는 귀하가 서비스를 이용하여 기대하는 손익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않으며, 회원이 본 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관하여는 책임을 지지 않습니다.<br/>
		2. 당 사이트는 서비스 이용과 관련하여 가입자에게 발생한 손해 중 가입자의 고의, 과실에 의한 손해에 대하여 책임을 부담하지 아니합니다.<br/><br/>
		
		제 11 조 (정보 제공 및 홍보물 게재)<br/>
		
		1. 당 사이트는 응급의료 서비스를 운영함에 있어서 각종 정보를 서비스에 게재하는 방법 등으로 회원에게 제공할 수 있습니다.<br/>
		2. 당 사이트는 응급의료 서비스에 적절하다고 판단되거나 활용 가능성 있는 홍보물을 게재할 수 있습니다.<br/><br/>
		
		제 12 조 (당 사이트에 제출된 게시물의 저작권)<br/>
		
		1. 귀하가 게시한 게시물의 내용에 대한 권리는 귀하에게 있습니다.<br/>
		2. 당 사이트는 게시된 내용을 사전 통지 없이 편집, 이동 할 수 있는 권리를 보유하며, 다음의 경우 사전 통지 없이 삭제할 수 있습니다.<br/>
		1) 본 서비스 약관에 위배되거나 상용 또는 불법, 음란, 저속하다고 판단되는 게시물을 게시한 경우<br/>
		2) 다른 회원 또는 제 3자를 비방하거나 중상 모략으로 명예를 손상시키는 내용인 경우<br/>
		3) 공공질서 및 미풍양속에 위반되는 내용인 경우<br/>
		4) 범죄적 행위에 결부된다고 인정되는 내용일 경우<br/>
		5) 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우<br/>
		6) 기타 관계 법령에 위배되는 경우<br/>
		3. 귀하의 게시물이 타인의 저작권을 침해함으로써 발생하는 민, 형사상의 책임은 전적으로 귀하가 부담하여야 합니다.<br/><br/>
		
		제 13 조 (사용자의 행동규범 및 서비스 이용제한)<br/>
		
		1. 귀하가 제공하는 정보의 내용이 허위인 것으로 판명되거나, 그러하다고 의심할 만한 합리적인 사유가 발생할 경우 당 사이트는 귀하의 본 서비스 사용을 일부 또는 전부 중지할 수 있으며, 이로 인해 발생하는 불이익에 대해 책임을 부담하지 아니합니다.<br/>
		2. 귀하가 당 사이트 서비스를 통하여 게시, 전송, 입수하였거나 전자메일 기타 다른 수단에 의하여 게시, 전송 또는 입수한 모든 형태의 정보에 대하여는 귀하가 모든 책임을 부담하며 당 사이트는 어떠한 책임도 부담하지 아니합니다.<br/>
		3. 당 사이트는 당 사이트가 제공한 서비스가 아닌 가입자 또는 기타 유관기관이 제공하는 서비스의 내용상의 정확성, 완전성 및 질에 대하여 보장하지 않습니다. 따라서 당 사이트는 귀하가 위 내용을 이용함으로 인하여 입게 된 모든 종류의 손실이나 손해에 대하여 책임을 부담하지 아니합니다.<br/>
		4. 귀하는 본 서비스를 통하여 다음과 같은 행동을 하지 않는데 동의합니다.<br/>
		1) 타인의 아이디(ID)와 비밀번호를 도용하는 행위<br/>
		2) 저속, 음란, 모욕적, 위협적이거나 타인의 프라이버시를 침해할 수 있는 내용을 전송, 게시, 게재, 전자메일 또는 기타의 방법으로 전송하는 행위<br/>
		3) 서비스를 통하여 전송된 내용의 출처를 위장하는 행위<br/>
		4) 법률, 계약에 의하여 이용할 수 없는 내용을 게시, 게재, 전자메일 또는 기타의 방법으로 전송하는 행위<br/>
		5) 타인의 특허, 상표, 영업비밀, 저작권, 기타 지식재산권을 침해하는 내용을 게시, 게재, 전자메일 또는 기타의 방법으로 전송하는 행위<br/>
		6) 당 사이트의 승인을 받지 아니한 광고, 판촉물, 정크메일, 스팸, 행운의 편지, 피라미드 조직 기타 다른 형태의 권유를 게시, 게재, 전자메일 또는 기타의 방법으로 전송하는 행위.<br/>
		7) 다른 사용자의 개인정보를 수집 또는 저장하는 행위<br/>
		5. 당 사이트는 회원이 본 약관을 위배했다고 판단되면 서비스와 관련된 모든 정보를 이용자의 동의 없이 삭제할 수 있습니다.<br/><br/>
		
		제 3 장 의무 및 책임<br/><br/>
		
		제 14 조 (당 사이트의 의무)<br/>
		
		1. 당 사이트는 법령과 본 약관이 금지하거나 미풍양속에 반하는 행위를 하지않으며, 계속적, 안정적으로 서비스를 제공하기 위해 노력할 의무가 있습니다.<br/>
		2. 당 사이트는 회원의 개인 신상 정보를 본인의 승낙 없이 타인에게 누설, 배포하지 않습니다. 다만, 개인정보보호법 등 관계법령에 의하여 관계 국가기관 등의 요구가 있는 경우에는 그러하지 아니합니다.<br/>
		3. 당 사이트는 이용자가 안전하게 당 사이트 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함) 보호를 위한 보안시스템을 갖추어야 합니다.<br/>
		4. 당 사이트는 이용자의 귀책사유로 인한 서비스 이용 장애에 대하여 책임을 지지 않습니다.<br/><br/>
		
		제 15조 (회원의 의무)<br/>
		
		1. 회원 가입시에 요구되는 정보는 정확하게 기입하여야 합니다. 또한 이미 제공된 귀하에 대한 정보가 정확한 정보가 되도록 유지, 갱신하여야 하며, 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.<br/>
		2. 회원은 당 사이트의 사전 승낙 없이 서비스를 이용하여 어떠한 영리행위도 할 수 없습니다.<br/>
		3. 회원은 당 사이트 서비스를 이용하여 얻은 정보를 당 사이트의 사전승낙 없이 복사, 복제, 변경, 번역, 출판, 방송 기타의 방법으로 사용하거나 이를 타인에게 제공할 수 없습니다.<br/>
		4. 회원은 당 사이트 서비스 이용과 관련하여 다음 각 호의 행위를 하여서는 안됩니다.<br/>
		1) 다른 회원의 ID를 부정 사용하는 행위<br/>
		2) 범죄행위를 목적으로 하거나 기타 범죄행위와 관련된 행위<br/>
		3) 선량한 풍속, 기타 사회질서를 해하는 행위<br/>
		4) 타인의 명예를 훼손하거나 모욕하는 행위<br/>
		5) 타인의 지식재산권 등의 권리를 침해하는 행위<br/>
		6) 해킹행위 또는 컴퓨터바이러스의 유포행위<br/>
		7) 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 지속적으로 전송하는 행위<br/>
		8) 서비스의 안전적인 운영에 지장을 주거나 줄 우려가 있는 일체의 행위<br/>
		9) 당 사이트에 게시된 정보의 변경.<br/>
		10) 기타 전기통신법 제53조와 전기통신사업법 시행령 16조(불온통신), 통신사업법 제53조3항에 위배되는 행위<br/><br/>
		
		제 4 장 기 타<br/><br/>
		
		제 16 조 (당 사이트의 소유권)<br/>
		
		1. 당 사이트가 제공하는 서비스, 그에 필요한 소프트웨어, 이미지, 마크, 로고, 디자인, 서비스명칭, 정보 및 상표 등과 관련된 지식재산권 및 기타 권리는 파인드닥터에 소유권이 있습니다.<br/>
		2. 귀하는 당 사이트가 명시적으로 승인한 경우를 제외하고는 전항의 소정의 각 재산에 대한 전부 또는 일부의 수정, 대여, 대출, 판매, 배포, 제작, 양도, 재라이센스, 담보권 설정 행위, 상업적 이용 행위를 할 수 없으며, 제3자로 하여금 이와 같은 행위를 하도록 허락할 수 없습니다.<br/><br/>
		
		제 17 조 (양도금지)<br/>
		
		회원이 서비스의 이용권한, 기타 이용계약 상 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공할 수 없습니다.<br/><br/>
		
		제 18 조 (손해배상)<br/>
		
		당 사이트는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 당 사이트가 고의로 행한 범죄행위를 제외하고 이에 대하여 책임을 부담하지 아니합니다.<br/><br/>
		
		제 19 조 (면책조항)<br/>
		
		1. 당 사이트는 서비스에 표출된 어떠한 의견이나 정보에 대해 확신이나 대표할 의무가 없으며 회원이나 제3자에 의해 표출된 의견을 승인하거나 반대하거나 수정하지 않습니다. 당 사이트는 어떠한 경우라도 회원이 서비스에 담긴 정보에 의존해 얻은 이득이나 입은 손해에 대해 책임이 없습니다.<br/>
		2. 당 사이트는 회원간 또는 회원과 제3자간에 서비스를 매개로 하여 물품거래 혹은 금전적 거래 등과 관련하여 어떠한 책임도 부담하지 아니하고, 회원이 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다.<br/><br/>
		
		제 20 조 (관할법원)<br/>
		
		본 서비스 이용과 관련하여 발생한 분쟁에 대해 소송이 제기될 경우 파인드닥터 본원 소재지 관할 법원을 전속적 관할 법원으로 합니다.<br/><br/>
		
		부 칙 1. (시행일) 본 약관은 2014년 5월 1일부터 시행됩니다.<br/>
	 </div>
	 
	 <div class="agrmsg1-1">
	 	<input id = "agree2" class="agree" name="agree" type="checkbox" value="이용약관동의" /> <span>&nbsp; 위의 이용약관에 동의합니다. </span> <br/>
	 </div>
	 
	 <div class="agrtitle2"><h3><strong>개인정보 수집 및 이용에 대한 안내</strong></h3></div>
	 
	 <div class="agrment2">
		가. 개인정보의 수집•이용 목적<br/>
		"파인드닥터"는 다음의 목적을 위해 개인정보를 수집 및 이용합니다. 수집된 개인정보는 다음의 목적이외의 용도로는 이용되지 않으며 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다.<br/><br/>
		
		1.수집.이용에 관한 사항<br/><br/>
		
		가. 수집•이용 목적<br/><br/>
		
		○ 회원 가입 및 관리<br/>
		회원가입 및 회원제 서비스 이용 및 제한적 본인 확인제에 따른 본인확인, 개인식별, 교육 신청 제한,부정이용방지, 비인가 이용방지, 가입의사 확인, 분쟁 조정을 위한 기록보존,불만처리 등 민원처리, 고지사항 전달 등을 목적으로 개인정보를 처리합니다.<br/>
		"다만, 회원가입을 거부한다는 사유만으로 서비스 제공을 거부하지 않습니다."<br/>
		
		○ 응급의료종사자 교육서비스 업무 처리 및 발급.열람서비스 제공(E-GEN 사이트에 한함)<br/>
		화원가입 양식에 포함된 개인정보는 응급의료종사자 교육서비스 업무 처리를 위한 목적으로 이용됩니다.<br/>
		(교육신청/이력/실적 관리업무, 수료증 발급 등)<br/>
		- 개인정보 파일명 : 응급의료종사자 회원정보<br/>
		- 처리목적 : 응급의료종사자 홈페이지 서비스 제공<br/><br/>
		
		나. 수집•이용 항목<br/>
		[기본정보]<br/>
	    ○ 필수항목 : 성명, 아이디(ID), 패스워드(PW), 핸드폰 번호<br/><br/>
	
	    [통합응급의료정보 인트라넷]<br/>
	    ○ 필수항목 : 소속기관, 담당업무, 직종, 이메일주소, 전화번호, 핸드폰 번호<br/>
	    ○ 선택항목 : 직장전화번호, 이메일 등<br/><br/>
	
	    [E-GEN]<br/>
	    ○ 필수항목 : 직종(보건의료직에만해당), 직장명(보건의료직에만해당), 은행명(강사만해당), 계좌번호(강사만해당), 예금주(강사만해당)<br/>
	    ○ 선택항목 : 이메일, 근무부서(보건의료직에만해당), 직급/직책(보건의료직에만해당), 직장주소(보건의료직에만해당), 자격증(의사/간호사,응급구조사에만해당), 자격증번호(의사/간호사,응급구조사에만해당)<br/><br/>
	
	       다. 개인정보의 보유근거 및 기간<br/>
	    ○ 개인정보 파일명 : 응급의료종사자 회원정보<br/>
	    ○ 보유근거 : 응급의료에 관한 법률 시행규칙 제6조 (구조및응급처치교육), 정보주체 동의<br/>
	    ○ 수집경로 : 온라인<br/>
	    ○ 보유기간 : 준영구보존(수료증 발급관련)<br/><br/>
	
	       라. 동의를 거부할 권리 및 동의를 거부할 경우의 불이익<br/>
	       위 개인정보의 수집•이용에 관한 동의는 응급의료종사자교육 사업의 원활한 추진을 위해 필수적이므로 이에 동의하셔야 이후 절차를 진행할 수 있습니다. 선택항목의 수집•이용에 관한 동의는 거부하실 수 있으며, 다만 동의 거부 시에는 회원가입, 응급의료종사자 교육서비스 일부 이용이 제한됩니다.<br/>
	    (교육신청, 수강증 발급, 개인화서비스, 교육지원기능, 설문조사)<br/><br/>
	
	       부 칙<br/>

        1. (시행일) 본 약관은 2019년 04월 00일부터 시행됩니다.<br/>

	 </div>
	 
	 <div class="agrmsg2-1">
		 	<input id = "agree1" class="agree" name="agree"  type="checkbox" value="개인정보수집동의" /> <span>&nbsp; 위의 개인정보 수집 및 이용에 대한 안내에 동의합니다.</span> <br/>
	 </div>
	 
	 <div class="all"><input type='checkbox' id='all_check'> &nbsp; <strong>모든 약관에 동의합니다.</strong> </div>
	 
	 <div class="confirm">
		 <button type="submit" id="proceedD" class="btn btn-lg btn-warning" style="font-size: 23px; color: white;">의사 - 회원가입 </button>
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 <button type="submit" id="proceedN" class="btn btn-lg btn-warning" style="font-size: 23px; color: white;">일반인 - 회원가입</button>
	 </div>
	 
	</div>
	
	<jsp:include page="./assets/inc/bottom.jsp" /> 
	<script type="text/javascript">
	 function moveD() {
			location.href = '10_Sign_up_i_d.do';
		}
	 
	 function moveN() {
			location.href = '11_Sign_up_i_n.do';
		}
	 
	 $(function() {
			$("#all_check").click(function() {
				$(".agree").prop('checked', $(this).prop('checked'));
			});
			
			$('#proceedD').click(function(e) {
				e.preventDefault;
				
				var value1 = $("#agree1:checked").val();
				var value2 = $("#agree2:checked").val();
				
				if (value1 != null && value2 != null) {
					moveD();
				} else {alert("모든 약관에 동의해 주세요.");}
				
			});
			
			$('#proceedN').click(function(e) {
				e.preventDefault;
				
				var value1 = $("#agree1:checked").val();
				var value2 = $("#agree2:checked").val();
				
				if (value1 != null && value2 != null) {
					moveN();
				} else {alert("모든 약관에 동의해 주세요.");}
				
			});
	 })
	</script>

</body>
</html>