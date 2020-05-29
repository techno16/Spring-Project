<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>Activity</title>

    <!-- 부트스트랩 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/ReliefWork.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
   
</head>

<body>
      <!-- navigation 시작 -->
    <nav class="navbar navbar-default navbar-fixed-top" role="navgation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-main">
    				<span class="sr-only">toggle navigation</span>
    				<span class="icon-bar"></span>
    				<span class="icon-bar"></span>
    				<span class="icon-bar"></span>
    			</button>
                <a class="navbar-brand" href="main.jsp"><img src="img/GREEN5.png"></a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse-main">
                <ul class="nav navbar-nav navbar-right">
                    <li><a class="active" href="main.jsp#wrapper-header">소개</a></li>
                    <li><a href="support.do">후원하기</a></li>
                    <li><a href="activity.do">우리의 활동</a></li>
                    <li><a href="board.do">게시판</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">로그인 및 회원가입<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="memberJoin.do">회원가입</a></li>
                            <li><a href="login.do">로그인</a></li>
                            <li><a href="adminlogin.do">관리자 로그인</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- navigation 끝 -->

<div class="padding">
        <div class="container-fluid">
            <div class=main-body>
                <!-- 간단한 소새글 -->
                <header class="major" id="work-main-title">
                    <h2>진행중인 사업</h2>
                    <p>진행중인 사업목록입니다.</p>
                </header>
                <div class="event1">
                    <div class="col-xs-12 col-md-8">
                        <img src="img/school.jpg" id="img_1" alt="schoolconstruction">
                    </div>
                    <div class="col-xs-6 col-md-4">
                        <h3>학교건축 지원사업&nbsp;<span class="label label-warning">진행중</span></h3>
                    </div>
                </div>

                <hr class="hr">

                <div class="event2">
                    <div class="col-xs-12 col-md-8">
                        <img src="img/well.jpg" id="img_2" alt="wellconstruction">
                    </div>
                    <div class="col-xs-6 col-md-4" id="event2">
                        <h3>아이티 우물 개발 사업&nbsp;<span class="label label-warning">진행중</span></h3>
                    </div>
                </div>
            </div>
        </div>
    </div>





<!-- footer -->
    <div class="footer">
        <div class="container">
            <div class="row ">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 ">
                    <div class="ft-logo"><img src="img/GREEN5.png" alt=""></div>
                </div>
            </div>
            <hr class="footer-line">
            <div class="row ">
                <!-- footer-about -->
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-6 ">
                    <div class="footer-widget ">
                        <div class="footer-title">Sitemap</div>
                        <ul class="list-unstyled">
                            <li><a href="main.do">About us</a></li>
                            <li><a href="support.do">Support</a></li>
                            <li><a href="activity.do">Our Work</a></li>
                            <li><a href="board.do">Board</a></li>
                            <li><a href="login.do">login</a></li>
                        </ul>
                    </div>
                </div>
                <!-- /.footer-about -->
                <!-- footer-links -->
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-6 ">
                    <div class="footer-widget ">
                        <div class="footer-title">Social</div>
                        <ul class="list-unstyled">
                            <li><a href="https://twitter.com/explore">Twitter</a></li>
                            <li><a href="https://www.google.com">Google +</a></li>
                            <li><a href="https://kr.linkedin.com">Linked In</a></li>
                            <li><a href="https://www.facebook.com">Facebook</a></li>
                        </ul>
                    </div>
                </div>

                <!-- /.footer-links -->
                <!-- footer-links -->
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-6 ">
                    <div class="footer-widget ">
                        <div class="footer-address">
                            <div class="footer-title">Address</div>
                            <address>
                          		 Save Earth the Children<br>
                            	 서울시 송파구 가락동 124<br>
                            	 02) 123-1111 <br>
                           		 techno16@naver.com
                            </address>
                        </div>
                    </div>
                </div>
                <!-- /.footer-links -->
                <!-- footer-links -->
                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-6 col-6 ">
                    <div class="footer-widget">
                        <section class="home-newsletter">
                            <div class="container">
                                <div class="row">
                                    <div class="single">
                                        <h2>Subscribe to our Newsletter</h2>
                                        <div class="input-group">
                                            <input type="email" class="form-control" placeholder="Enter your email">
                                            <span class="input-group-btn">
                                                    <button class="btn btn-theme" type="submit">Subscribe</button>
                                                </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>

                <!-- tiny-footer -->
            </div>
            <div class="row ">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 text-center ">
                    <div class="tiny-footer">
                        <p>Copyright © All Rights Reserved 2020 </p>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- /.footer -->



 	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>