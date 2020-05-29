<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>main</title>
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
  
    <!-- 부트스트랩 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Karla&display=swap" rel="stylesheet">

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


    <!-- 메인사진 -->
    <div class="container-fluid" id="home">
        <div class="landing-text">
            <h1>당신의 후원을 기다립니다.</h1>
            <h3>아이들의 가족이 되어주세요.</h3>
            <a href="support.do" class="btn btn-default btn-lg">후원하러 가기</a>
        </div>
    </div>

    <!-- 간단한 소새글 -->
    <div class="inner">
        <!-- Blockquote -->
        <section>

            <div class="content" >
                <blockquote class="blockquote" id="blockquote">
                    <p>"나는 내가 아픔을 느낄만큼 사랑하면 아픔은 사라지고 더 큰 사랑만이 생겨난다는 역설을 발견했다"</p>
                    <footer class="blockquote-footer">Mother Teresa</footer><br>
                    <p></p><br>
                    <p>"인생에 있어서 최고의 행복은 우리가 사랑받고 있음을 확신하는 것이다"</p>
                    <footer class="blockquote-footer" span id="wrapper-header">Victor Hugo</span></footer>
                </blockquote>
            </div>
        </section >
    </div>

	
    <!-- 메인2 시작 -->
    <section class="wrapper style2"  >
        <div class="container">
            <header class="major" >
                <h2>아이들은 어떤 지원을 받게 되나요?</h2>
                <p>아이들은 신앙교육, 건강검진, 학교교육, 주기적인 식사를 지원받게 됩니다.</p>
            </header>
        </div>
    </section>

    <!-- 지원목록 -->
    <section class="wrapper style1">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <img src="img/pray.jpg" alt="pray" class="img-rounded">
                    <h3>신앙교육</h3>
                </div>
                <div class="col-md-3">
                    <img src="img/health1.jpg" alt="exam" class="img-rounded">
                    <h3>건강검진</h3>
                </div>
                <div class="col-md-3">
                    <img src="img/study1.jpg" alt="education" class="img-rounded">
                    <h3>학교교육</h3>
                </div>
                <div class="col-md-3">
                    <img src="img/meal1.jpg" alt="meal" class="img-rounded">
                    <h3>음식섭취</h3>
                </div>
            </div>

        </div>
    </section>

    <!-- 중간 박스 -->
    <section id="box-main" class="container">
        <section class="box special">
            <header class="major">
                <h2>언제까지 후원하게 되나요?</h2>
                <p>아이들이 성인이 되어서 독립할 때까지 후원하게 됩니다. <br><br> 만 18세 이후에는 결연이 자동으로 해제됩니다.</p>
            </header>
            <span class="image featured"><img src="#" alt="" /></span>
        </section>

        <section class="box special features">
            <div class="features-row">
                <section>
                    <span class="icon solid major" id="box-icon1"><i class="fas fa-praying-hands fa-lg"></i></span>
                    <h3>신앙교육</h3>
                    <p>아이들이 신앙안에서 올바르게 자라나게 도와줍니다. 교회 안에서 받은 사랑을 성인이 되어서 나눠줄 수 있게 교육합니다.</p>
                </section>
                <section>
                    <span class="icon solid major" id="box-icon2"><i class="fas fa-syringe fa-lg"></i></span>
                    <h3>예방접종</h3>
                    <p>아이들이 필요한 시기마다 예방접종을 받게 됩니다. 주변환경이 깨끗하지 않기 때문에 예방접종이 반드시 필요합니다.</p>
                </section>
            </div>
            <div class="features-row">
                <section>
                    <span class="icon solid major" id="box-icon3"><i class="fas fa-book-reader fa-lg"></i></span>
                    <h3>학교교육</h3>
                    <p>아이들이 학교교육을 받을 수 있게 됩니다. 아이들이 사회를 이끄는 리더의 역할을 할 수 있도록 교육합니다.</p>
                </section>
                <section>
                    <span class="icon solid major" id="box-icon4"><i class=" fas fa-utensils fa-lg"></i></span>
                    <h3>식사지원</h3>
                    <p>아이들이 정기적인 식사를 지원받게 됩니다. 아이들의 영양상태를 관찰하고 잘 성장하도록 도와줍니다.</p>
                </section>
            </div>
        </section>
    </section>
    <!-- 메인2 끝 -->

    <!-- 관리자문의 -->
    <section class="wrapper style1 align-center">
        <div class="inner-medium" id="faqtoadmin">
            <h2>문의사항</h2>
            <form method="post" action="#">
                <div class="row" id="faq-box">
                    <div class="firstrow">
                        <div class="col-xs-6">
                            <label for="name">이름</label>
                            <input type="text" name="name" id="main-name" value="" />
                        </div>
                        <div class="col-xs-6">
                            <label for="email">이메일</label>
                            <input type="email" name="email" id="main-email" value="" />
                        </div>
                    </div>
                    <div class="secondrow">
                        <div class="col-xs-12">
                            <label for="message">문의내용</label><br>
                            <textarea name="message" id="main-message" rows="10"></textarea>
                        </div>
                    </div>
                </div>

                <input type="submit" name="submit" id="submit" value="문의하기" />

            </form>

        </div>
    </section>
    <!-- 관리자문의 끝 -->




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
			  </div>
			   <!-- tiny-footer -->
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





  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
  <script src="js/bootstrap.min.js"></script>


</body>

</html>