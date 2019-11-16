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
        	