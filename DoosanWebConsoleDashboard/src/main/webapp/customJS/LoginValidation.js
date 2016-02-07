function moveFocus(num, here, next){
    		var str = here.value.length;
    		if(str == num){
    			next.focus();
    		}
    	}
    	
    	function validate(){
    		var Frm = document.Frm;
    		var id = document.getElementById('member_id');
    		var password1 = document.getElementById('member_password');
    		var password2 = document.getElementById('member_password_check');
    		var name = document.getElementById('member_name');
    		var birth_year = document.getElementById('birth_year');
    		var birth_month = document.getElementById('birth_month');
    		var birth_day = document.getElementById('birth_day');
    		var email = document.getElementById('member_email');
    		var phone_first = document.getElementById('phone_first');
    		var phone_second = document.getElementById('phone_second');
    		var phone_third = document.getElementById('phone_third');
    		console.log(document.getElementsByName('member_sex'));
    		console.log(email.value);
    		
    		if(id.value == ""){
    			alert("아이디를 입력해주세요");
    			id.focus();
    			return false;
    		}
    		
    		if(id.value.length < 4 || id.value.length > 12){
    			alert("아이디는 4~12자 이내로 입력 가능합니다");
    			id.select();
    			return false;
    		}
    		
    		for(var i=0; i<id.value.length;i++){
    			var ch = id.value.charAt(i);
    			
    			if(( ch < "a" || ch > "z") && (ch < "A" || ch > "Z") && (ch < "0" || ch > "9" )){
    				alert("아이디는 영문과 숫자로만 입력 가능합니다");
                    id.select();
                    return false;
    			}
    			
    		}
    		
    		if(!isNaN(id.value.substr(0,1))){
    			alert("아이디는 숫자로 시작할 수 없습니다");
    			id.select();
    			return false;
    		}
    		
    		if(!checkPassword(password1, id, password2)){
    			return false;
    		}
    		
    		if(name.value == ""){
    			alert("이름을 입력해 주세요");
    			name.focus();
    			return false;
    		}
    		
    		if(/[0-9]/.test(name.value)){
    			alert("이름에는 숫자가 들어갈 수 없습니다");
    			name.select();
    			return false;
    		}
    		
    		if(email.value == ""){
    			alert("이메일을 입력해주세요");
    			email.focus();
    			return false;
    		}
    		
    		if(!/^[\w]{4,}@[\w]+(\.[\w-]+){1,3}$/.test(email.value)){
    			alert("이메일 형식에 맞지 않습니다");
    			email.select();
    			return false;
    		}
    		
    		return true;
    	}
    	
    	function checkPassword(password1, id, password2){
    		var SamePassword_0 = 0;	//동일문자 카운트
    		var SamePassword_1 = 0;	//연속성(+) 카운트
    		var SamePassword_2 = 0;	//연속성(-) 카운트
    		var chr_pass_0;
    		var chr_pass_1;
    		var chr_pass_2;
    		
    		if(password1.value == ""){
    			alert("비밀번호를 입력해 주세요");
    			password1.focus();
    			return false;
    		}
    		
    		if(password1.value != password2.value){
    			alert("비밀번호와 비밀번호 확인이 일치하지 않습니다");
    			password2.select();
    			return false;
    		}
    		
    		if(password1.value.length < 6 || password1.value.length > 16){
    			alert("비밀번호는 문자, 숫자, 특수문자의 조합으로 6~16자리로 입력해주세요");
    			password1.select();
    			return false;
    		}
    		
    		if(!password1.value.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/)){
    			alert("비밀번호는 문자, 숫자, 특수문자의 조합으로 6~16자리로 입력해주세요");
    			password1.select();
    			return false;
    		}
    		
    		if(id.value.indexOf(password1.value) > -1){
    			alert("비밀번호에 아이디를 사용할 수 없습니다");
    			password1.select();
    			return false;
    		}
    		
    		for(var i=0;i<password1.value.length;i++){
    			chr_pass_0 = password1.value.charAt(i);
    			chr_pass_1 = password1.value.charAt(i+1);
    			
    			//동일문자 카운트
    			if(chr_pass_0 == chr_pass_1){
    				SamePassword_0 = SamePassword_0 + 1;
    			}
    			
    			chr_pass_2 = password1.value.charAt(i+2);
    			//연속성(+) 카운트
    			if(chr_pass_0.charCodeAt(0) - chr_pass_1.charCodeAt(0) == 1 && chr_pass_1.charCodeAt(0) - chr_pass_2.charCodeAt(0) == 1){
    				SamePassword_1 = SamePassword_1 + 1;
    			}
    			
    			//연속성(-) 카운트
    			if(chr_pass_0.charCodeAt(0) - chr_pass_1.charCodeAt(0) == -1 && chr_pass_1.charCodeAt(0) - chr_pass_2.charCodeAt(0) == -1){
    				SamePassword_2 = SamePassword_2 + 1;
    			}
    			
    			if(SamePassword_0 > 1){
    				alert("동일 문자를 3번 이상 사용할 수 없습니다");
    				password1.select();
    				return false;
    			}
    			
    			if(SamePassword_1 > 1 || SamePassword_2 > 1){
    				alert("연속된 문자열(123 or 321 or abc or cba)을 \n 3자 이상 사용할 수 없습니다");
    				password1.select();
    				return false;
    			}
    		}
    		
    		return true;
    	}
    	
    	function onlyNumber(event){
    		event = event || window.event;
    		var keyID = (event.which) ? event.which : event.keyCode;
    		
    		if((keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39){
    			return true;
    		}else{
    			return false;
    		}
    	}
    	
    	function removeChar(event){
    		event = event || window.event;
    		var keyID = (event.which) ? event.which : event.keyCode;
    		if(keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39){
    			return true;
    		}else{
    			event.target.value = event.target.value.replace(/[^0-9]/g, "");
    		}
    	}