<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>MemberJoin</title>

    <!-- 부트스트랩 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/MemberJoin.css" rel="stylesheet">
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>


<body>

    <!-- 로그인 박스 -->

    <div class="container">
        <div class="row main">
            <div class="main-login main-center">
                <img class="logo-image" src="img/GREEN6.png" alt="brand-logo" id="logo-image">

                <form class="form-horizontal" method="post" action="/insert.do">
                    <div class="form-group">
                        <label for="username" class="cols-sm-2 control-label">아이디</label>
                        <p>
                            <div class="cols-sm-10">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <input type="text" class="form-control" name="id" id="id"  placeholder="아이디를 입력해주세요." />
                                </div>
                            </div>
                    </div>

                    <div class="form-group">
                        <label for="password" class="cols-sm-2 control-label">비밀번호</label>
                        <p></p>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                <input type="password" class="form-control" name="password" id="password" placeholder="비밀번호를 입력해주세요." />
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password" class="cols-sm-2 control-label">비밀번호확인</label>
                        <p></p>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                <input type="password" class="form-control" name="password2" id="password2" placeholder="비밀번호를 다시 입력해주세요." />
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="password" class="cols-sm-2 control-label">이름</label>
                        <p></p>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력해주세요." />
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="E-mail" class="cols-sm-2 control-label">E-mail</label>
                        <p></p>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="far fa-envelope" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="email" id="email" placeholder="E-mail을 입력해주세요." />
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="phone" class="cols-sm-2 control-label">전화번호</label>
                        <p></p>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fas fa-phone" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="phone" id="phone" placeholder="전화번호를 입력해주세요." />
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="birth" class="cols-sm-2 control-label">생년월일</label>
                        <p></p>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fas fa-birthday-cake" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="birth" id="birth" placeholder="생년월일을 입력해주세요.(YYYY-MM-DD)" />
                            </div>
                        </div>
                    </div>

                    <div class="submit">
                        <a href="main.do" class="btn btn-main btn-lg btn-block" id="submit">회원가입</a>
                    </div>

                </form>
            </div>
        </div>
    </div>


</body>

</html>