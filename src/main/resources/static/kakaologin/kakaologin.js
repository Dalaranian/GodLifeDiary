function kakaologin(){
	    window.Kakao.Auth.login({
	        scope   : 'profile_nickname, account_email',
	        success : function(authObj){
	            console.log(authObj);
	            window.Kakao.API.request({
	                url     : '/v2/user/me', 
	                success : res => {
	                    const kakao_account = res.kakao_account;
	                    
 	                    let obj = {
	                    		userId : kakao_account.profile.nickname,
	                    		userName : kakao_account.email
	                    };
	                    
 	                   const json_kakao_account = JSON.stringify(obj);
	                   /* 불러온 계정 정보 컨트롤러로 보내기 */
	                     $.ajax({
	                        url: '/index/kakaoAuth',
	                        type: 'POST',
	                        data: json_kakao_account,
	                        contentType: 'application/json; charset=utf-8',
	                        dataType: 'json',
	                        success: function(response) {
	                            console.log(response);
	                        },
	                        error: function(error) {
	                            console.log(error);
	                        }
	                    });
	                }
	            });
	        }
	    });
	}