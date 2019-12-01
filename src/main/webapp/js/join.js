$(function(){
        $("form").validate({
            //validation이 끝난 이후의 submit 직전 추가 작업할 부분
            submitHandler: function() {
                var f = confirm("회원가입을 완료하시겠습니까?");
                if(f){
                    return true;
                } else {
                    return false;
                }
            },
            //규칙
            rules: {
          memberId: {
                    required : true,
                    minlength : 6,
                    maxlength: 16,
                    alphabet: true,
                    remote: "/joinFormAction.do"
                },
    memberPassword: {
                    required : true,
                    minlength : 4,
                    maxlength : 16
                },
    memberPassword2: {
                    required : true,
                    minlength : 4,
                    maxlength : 16,
                    equalTo : memberPassword
                },
         memberName: {
                    required : true
                },
        memberPhone: {
        			required : true
        		},
        memberEmail: {
        			required : true,
        			email : true
        		},
      memberAddress: {
        			required : true
      			},
     memberAddress2: {
    	  			required : true	
      			},
      	   postCode: {
      		   		required : true
      	   		}
            },
            //규칙체크 실패시 출력될 메시지
            messages : {
                memberId: {
                    required : "필수로입력하세요",
                    minlength : "최소 6글자이상이어야 합니다",
                    maxlength : "최대 16글자까지 입니다.",
                    remote : "존재하는 아이디입니다"
                },
                password: {
                    required : "필수로입력하세요",
                    minlength : "최소 {0}글자이상이어야 합니다"
                },
                repassword: {
                    required : "필수로입력하세요",
                    minlength : "최소 {0}글자이상이어야 합니다",
                    equalTo : "비밀번호가 일치하지 않습니다."
                },
                name: {
                    required : "필수로입력하세요",
                    minlength : "최소 {0}글자이상이어야 합니다"
                },
                age: {
                    digits : "숫자만입력하세요"
                },
                email: {
                    required : "필수로입력하세요",
                    minlength : "최소 {0}글자이상이어야 합니다",
                    email : "메일규칙에 어긋납니다"
                }
            }
        });
})
