<%--
  Created by IntelliJ IDEA.
  User: Jaee
  Date: 2021-06-08
  Time: 오후 8:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
</head>
<body>
<div>
    <a href="javascript:sendLink()">
        <img src="https://developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png"/>
    </a>
    <h1>KaKaoTest 화면</h1>
</div>

<script>

    /*
     		카카오 로그인이 안되어 있을경우
 	    	따로 카카오 로그인 api 필요없이 카카오측에서 자동으로 로그인창 띄워줌
 	    	- 모바일은 항상 로그인 되어있으니까 바로 공유되고
 	    	- 웹은 로그인창이 뜸 (로그인 되어있을경우는 안뜸)
    */

    Kakao.init('9652d1ee33b30a7b1cad7e3f918b6486'); // 나의 자바스크립트 key  (이그노어 암호화 해야됨 노출 X)
    function sendLink() {
        Kakao.Link.sendDefault({
            objectType: 'feed',
            content: {
                title: '친구 취향 맞추기',
                description: '(서버에서 보낸값) 님의 취향을 맞춰보세요 !',
                imageUrl: 'https://blog.kakaocdn.net/dn/0mySg/btqCUccOGVk/nQ68nZiNKoIEGNJkooELF1/img.jpg',	// 사용하고자 하는 이미지
                link: {
                    mobileWebUrl: 'http://localhost:8080/user/kakaoTest',	// 모바일에서 접속할 URL
                    webUrl: 'http://localhost:8080/user/kakaoTest'		// 웹에서 접속할 URL
                },
            },
            buttons: [
                {
                    title: '공유 하기',
                    link: {
                        mobileWebUrl: 'http://localhost:8080/user/kakaoTest',		// 모바일에서 접속할 url
                        webUrl: 'http://localhost:8080/user/kakaoTest'			// 웹에서 접속할 url
                    },
                }
            ],
        })
    }
</script>
</body>
</html>
