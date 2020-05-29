<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="js/bootstrap.min.js"></script>
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <title>Board</title>

    <!-- 부트스트랩 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <style>
    /* button */

    .btn-main {
        color:  #FFFFFF;
        background-color:#14873f;
        border-color: #FFFFFF;
        border-radius: 10;
    }

    .btn-main:hover,
    .btn-main:focus,
    .btn-main:active,
    .btn-main.active,
    .open .dropdown-toggle.btn-main {
        color: #FFFFFF;
        background-color: rgb(19, 70, 27);
        border-color: #FFFFFF;
    }
    /* pagenation */
    .pagination ul {
    display: inline-block;
    padding: 0;
    margin: 0;
    
    }

    .pagination li {
    display: inline;
    
    }

    .pagination li a {
    color: #14873f;
    float: left;
    text-decoration: none;
    background-color: white;
    }

    .pagination li.active a {
    background-color: #14873f;
    color: white;
    }

    .pagination li:hover:not(.active) a {
    background-color: white;
    color: rgb(19, 70, 27);
    }
    </style>
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

    <!-- 게시판 -->

    <div class="container" style="margin-top: 180px; margin-bottom: 100px; font-family: 'Noto Sans KR', sans-serif; ">
        <div class="row">
            <div class="title">
                <h1 style="font-weight: 500;">자유게시판</h1>
            </div>
            <table class="table table-hover" style="text-align: center; border: 1px solid #dddddd; ">
                <thead>
                    <tr>
                        <th style="background-color: #eeeeee; text-align: center;">번호</th>
                        <th style="background-color: #eeeeee; text-align: center;">제목</th>
                        <th style="background-color: #eeeeee; text-align: center;">글쓴이</th>
                        <th style="background-color: #eeeeee; text-align: center;">날짜</th>
                        <th style="background-color: #eeeeee; text-align: center;">조회</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>10</td>
                        <td>안녕하세요</td>
                        <td>홍길동</td>
                        <td>2020.3.20</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td>반갑습니다</td>
                        <td>홍길동</td>
                        <td>2020.3.22</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td>누구십니까</td>
                        <td>홍길동</td>
                        <td>2020.3.22</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>자유게시판입니다</td>
                        <td>홍길동</td>
                        <td>2020.3.22</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td>자유게시판 테스트중입니다.</td>
                        <td>홍길동</td>
                        <td>2020.3.23</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>다시 만나고 싶습니다</td>
                        <td>홍길동</td>
                        <td>2020.3.23</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>하하하 안녕하세요</td>
                        <td>홍길동</td>
                        <td>2020.3.23</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>지금 가고 있습니다.</td>
                        <td>홍길동</td>
                        <td>2020.3.23</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>만나서 반갑습니다</td>
                        <td>홍길동</td>
                        <td>2020.3.27</td>
                        <td>0</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>게시글 작성중입니다.</td>
                        <td>홍길동</td>
                        <td>2020.3.27</td>
                        <td>0</td>
                    </tr>
                </tbody>
            </table>
            <a herf="writer.jsp" class="btn btn-main pull-right">글쓰기</a>

            <div class="col-sm-12">
                <div class="row">
                    <ul class="pagination" style="margin: 20px 400px;">
                        <li class="page-item"><a href="#">이전페이지</a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li class="page-item"><a href="#">2</a></li>
                        <li class="page-item"><a href="#">3</a></li>
                        <li class="page-item"><a href="#">4</a></li>
                        <li class="page-item"><a href="#">5</a></li>
                        <li class="page-item"><a href="#">다음페이지</a></li>
                    </ul>
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


</body>

</html>