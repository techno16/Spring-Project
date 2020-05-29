<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
    <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
   
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/page1.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <link href="https://pro.fontawesome.com/releases/v5.13.0/css/all.css" rel="stylesheet">
    <script src="http://maps.googleapis.com/maps/api/js"></script>
    <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyClbqykCPrqWcxe1Th0lGCzL54V4UMSXvA"></script>



    <script>
        function initialize() {
            var mapProp = {
                center: new google.maps.LatLng(1.564801, 32.278475),
                zoom: 8,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var mapProp2 = {
                center: new google.maps.LatLng(18.923369, -72.732384),
                zoom: 7,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var mapProp3 = {
                center: new google.maps.LatLng(-6.528029, 34.735019),
                zoom: 8,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var mapProp4 = {
                center: new google.maps.LatLng(12.629480, 122.872503),
                zoom: 7,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var mapProp5 = {
                center: new google.maps.LatLng(-4.556662, 122.725800),
                zoom: 6,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var mapProp6 = {
                center: new google.maps.LatLng(8.665618, 39.848550),
                zoom: 6,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
            var map2 = new google.maps.Map(document.getElementById("googleMap2"), mapProp2);
            var map3 = new google.maps.Map(document.getElementById("googleMap3"), mapProp3);
            var map4 = new google.maps.Map(document.getElementById("googleMap4"), mapProp4);
            var map5 = new google.maps.Map(document.getElementById("googleMap5"), mapProp5);
            var map6 = new google.maps.Map(document.getElementById("googleMap6"), mapProp6);
        }

        google.maps.event.addDomListener(window, 'load', initialize);
    </script>

    <title>Support</title>



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

    <header class="major" id="modal-main-title">
        <h2>1:1 어린이 양육</h2>
        <p>우리들의 부모님이 되어주세요.</p>
    </header>

    <div class="social-box">
        <div class="container-fluid">
            <div class="row">
                <!-- Modal1 -->
                <div class="col-lg-4 col-xs-12  text-center">
                    <div class="thumbnail">
                        <img src="img/child1.jpg" alt="child1.jpg">
                        <div class="caption">
                            <h3>에리나</h3>
                            <p>
                                국가: 우간다 <br> 성별: 여 <br> 생년월일: 2018-09-22
                            </p>
                            <button type="button" class="btn btn-inverse btn" data-toggle="modal" data-target="#myModal">
                                더 알아보기
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">어린이 정보</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-xs-6 col-md-4">
                                                    <div class="thumbnail">
                                                        <img class="img img-rounded" id="modal-img" src="img/child1.jpg" alt="child1.jpg">
                                                        <div class="caption">
                                                            <h3>Erina Rosaria</h3>
                                                            <div class="logo-span">
                                                                <table class="logo-table" id="logo-table">
                                                                    <tr>
                                                                        <td><i class="fas fa-globe-africa"></i></td>
                                                                        <td><i class="fas fa-birthday-cake"></i></td>
                                                                        <td><i class="fas fa-child"></i></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>우간다</td>
                                                                        <td>2세</td>
                                                                        <td>여</td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <p><a href="#" class="btn btn-inverse" role="button">결연하기</a></p>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-8">
                                                    <div class="modal-text">
                                                        <h2>안녕하세요? 제 이름은 에리나에요.</h2>

                                                        <br> 제가 좋아하는 음식은 바나나에요. <br> 제가 좋아하는 놀이는 걷기에요.
                                                        <br> 저의 가족은 엄마와 저에요. <br> 아직 후원자님을 뵙진 못 했지만 <br> 얼른 만나보고 싶어요.
                                                    </div>
                                                </div>
                                                <div class="maps">
                                                    <div id="googleMap" style="width:100%; height:300px;"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <div class="table-title">
                                                <h1>양육목표</h1>
                                                <h5>정신적, 육체적으로 건강하게 성장하고 나아가 다른 아이들을 후원 할 수 있는 성인이 되는 것이 저희의 목표입니다.</h5>
                                            </div>
                                            <div class="table-body">
                                                <table class="table table-striped">
                                                    <tr>
                                                        <td>태아/영아</td>
                                                        <td>아이들이 생존 할 수 있도록 도와줍니다. 예방접종, 영양보충, 위생관리, 위급 상황시 의료지원 등을 제공합니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td>어린이 양육</td>
                                                        <td>영아들이 받는 기본지원을 제공받고 더불어 신앙교육, 교육지원, 놀이활동 등을 지원합니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td>청소년 교육</td>
                                                        <td>기본지원을 제공받고 더불어 직업훈련, 상담교육, 이성교육, 1:1 보충교육 등을 지원합니다.</td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal2 -->
                <div class="col-lg-4 col-xs-12  text-center">
                    <div class="thumbnail">
                        <img src="img/child2.jpg" alt="child2.jpg">
                        <div class="caption">
                            <h3>카니오</h3>
                            <p>
                                국가: 아이티 <br> 성별: 남 <br> 생년월일: 2016-04-17
                            </p>
                            <button type="button" class="btn btn-inverse" data-toggle="modal" data-target="#myModal2">
                                더 알아보기
                            </button>

                            <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">어린이 정보</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-xs-6 col-md-4">
                                                    <div class="thumbnail">
                                                        <img class="img img-rounded" id="modal-img" src="img/child2.jpg" alt="child2.jpg">
                                                        <div class="caption">
                                                            <h3>Canio Roberto</h3>
                                                            <div class="logo-span">
                                                                <table class="logo-table" id="logo-table">
                                                                    <tr>
                                                                        <td><i class="fas fa-globe-africa"></i></td>
                                                                        <td><i class="fas fa-birthday-cake"></i></td>
                                                                        <td><i class="fas fa-child"></i></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>아이티</td>
                                                                        <td>4세</td>
                                                                        <td>남</td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <p><a href="#" class="btn btn-inverse" role="button">결연하기</a></p>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-8">
                                                    <div class="modal-text">
                                                        <h2>안녕하세요? 제 이름은 카니오에요.</h2>

                                                        <br> 제가 좋아하는 음식은 스파게티에요. <br> 제가 좋아하는 놀이는 축구에요.
                                                        <br> 저의 가족은 엄마와 형과 저에요. <br> 아직 후원자님을 뵙진 못 했지만 <br> 얼른 만나보고 싶어요.
                                                    </div>
                                                </div>
                                                <div class="maps">
                                                    <div id="googleMap2" style="width:100%; height:300px;"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <div class="table-title">
                                                <h1>양육목표</h1>
                                                <h5>정신적, 육체적으로 건강하게 성장하고 나아가 다른 아이들을 후원 할 수 있는 성인이 되는 것이 저희의 목표입니다.</h5>
                                            </div>
                                            <div class="table-body">
                                                <table class="table table-striped">
                                                    <tr>
                                                        <td>태아/영아</td>
                                                        <td>아이들이 생존 할 수 있도록 도와줍니다. 예방접종, 영양보충, 위생관리, 위급 상황시 의료지원 등을 제공합니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td>어린이 양육</td>
                                                        <td>영아들이 받는 기본지원을 제공받고 더불어 신앙교육, 교육지원, 놀이활동 등을 지원합니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td>청소년 교육</td>
                                                        <td>기본지원을 제공받고 더불어 직업훈련, 상담교육, 이성교육, 1:1 보충교육 등을 지원합니다.</td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal3 -->
                <div class="col-lg-4 col-xs-12 text-center">
                    <div class="thumbnail">
                        <img src="img/child3.jpg" alt="child3.jpg">
                        <div class="caption">
                            <h3>아이스린</h3>
                            <p>
                                국가: 탄자니아 <br> 성별: 여 <br> 생년월일: 2014-06-14
                            </p>
                            <button type="button" class="btn btn-inverse" data-toggle="modal" data-target="#myModal3">
                                더 알아보기
                              </button>

                            <!-- Modal -->
                            <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">어린이 정보</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-xs-6 col-md-4">
                                                    <div class="thumbnail">
                                                        <img class="img img-rounded" id="modal-img" src="img/child3.jpg" alt="child3.jpg">
                                                        <div class="caption">
                                                            <h3>isrin Ritaman</h3>
                                                            <div class="logo-span">
                                                                <table class="logo-table" id="logo-table">
                                                                    <tr>
                                                                        <td><i class="fas fa-globe-africa"></i></td>
                                                                        <td><i class="fas fa-birthday-cake"></i></td>
                                                                        <td><i class="fas fa-child"></i></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>탄자니아</td>
                                                                        <td>6세</td>
                                                                        <td>여</td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <p><a href="#" class="btn btn-inverse" role="button">결연하기</a></p>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-8">
                                                    <div class="modal-text">
                                                        <h2>안녕하세요? 제 이름은 아이스린이에요.</h2>

                                                        <br> 제가 좋아하는 음식은 빵이에요. <br> 제가 좋아하는 놀이는 그림그릭기에요.
                                                        <br> 저의 가족은 엄마와 저에요. <br> 아직 후원자님을 뵙진 못 했지만 <br> 얼른 만나보고 싶어요.
                                                    </div>
                                                </div>
                                                <div class="maps">
                                                    <div id="googleMap3" style="width:100%; height:300px;"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <div class="table-title">
                                                <h1>양육목표</h1>
                                                <h5>정신적, 육체적으로 건강하게 성장하고 나아가 다른 아이들을 후원 할 수 있는 성인이 되는 것이 저희의 목표입니다.</h5>
                                            </div>
                                            <div class="table-body">
                                                <table class="table table-striped">
                                                    <tr>
                                                        <td>태아/영아</td>
                                                        <td>아이들이 생존 할 수 있도록 도와줍니다. 예방접종, 영양보충, 위생관리, 위급 상황시 의료지원 등을 제공합니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td>어린이 양육</td>
                                                        <td>영아들이 받는 기본지원을 제공받고 더불어 신앙교육, 교육지원, 놀이활동 등을 지원합니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td>청소년 교육</td>
                                                        <td>기본지원을 제공받고 더불어 직업훈련, 상담교육, 이성교육, 1:1 보충교육 등을 지원합니다.</td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <!-- Modal4 -->
                <div class="col-lg-4 col-xs-12  text-center">
                    <div class="thumbnail">
                        <img src="img/child4.jpg" alt="child4.jpg">
                        <div class="caption">
                            <h3>이과린</h3>
                            <p>
                                국가: 필리핀 <br> 성별: 남 <br> 생년월일: 2015-11-26
                            </p>
                            <button type="button" class="btn btn-inverse btn" data-toggle="modal" data-target="#myModal4">
                                더 알아보기
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">어린이 정보</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-xs-6 col-md-4">
                                                    <div class="thumbnail">
                                                        <img class="img img-rounded" id="modal-img" src="img/child4.jpg" alt="child4.jpg">
                                                        <div class="caption">
                                                            <h3>Iguarin Norma</h3>
                                                            <div class="logo-span">
                                                                <table class="logo-table" id="logo-table">
                                                                    <tr>
                                                                        <td><i class="fas fa-globe-africa"></i></td>
                                                                        <td><i class="fas fa-birthday-cake"></i></td>
                                                                        <td><i class="fas fa-child"></i></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>탄자니아</td>
                                                                        <td>4세</td>
                                                                        <td>남</td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <p><a href="#" class="btn btn-inverse" role="button">결연하기</a></p>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-8">
                                                    <div class="modal-text">
                                                        <h2>안녕하세요? 제 이름은 이과린이에요.</h2>

                                                        <br> 제가 좋아하는 음식은 사탕수수에요. <br> 제가 좋아하는 놀이는 축구에요.
                                                        <br> 저의 가족은 엄마와 저에요. <br> 아직 후원자님을 뵙진 못 했지만 <br> 얼른 만나보고 싶어요.
                                                    </div>
                                                </div>
                                                <div class="maps">
                                                    <div id="googleMap4" style="width:100%; height:300px;"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <div class="table-title">
                                                <h1>양육목표</h1>
                                                <h5>정신적, 육체적으로 건강하게 성장하고 나아가 다른 아이들을 후원 할 수 있는 성인이 되는 것이 저희의 목표입니다.</h5>
                                            </div>
                                            <div class="table-body">
                                                <table class="table table-striped">
                                                    <tr>
                                                        <td>태아/영아</td>
                                                        <td>아이들이 생존 할 수 있도록 도와줍니다. 예방접종, 영양보충, 위생관리, 위급 상황시 의료지원 등을 제공합니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td>어린이 양육</td>
                                                        <td>영아들이 받는 기본지원을 제공받고 더불어 신앙교육, 교육지원, 놀이활동 등을 지원합니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td>청소년 교육</td>
                                                        <td>기본지원을 제공받고 더불어 직업훈련, 상담교육, 이성교육, 1:1 보충교육 등을 지원합니다.</td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal5 -->
                <div class="col-lg-4 col-xs-12 text-center">
                    <div class="thumbnail">
                        <img src="img/child5.jpg" alt="child5.jpg">
                        <div class="caption">
                            <h3>노이텐</h3>
                            <p>
                                국가: 인도네시아 <br> 성별: 남 <br> 생년월일: 2015-01-13
                            </p>
                            <button type="button" class="btn btn-inverse" data-toggle="modal" data-target="#myModal5">
                                더 알아보기
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">어린이 정보</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-xs-6 col-md-4">
                                                    <div class="thumbnail">
                                                        <img class="img img-rounded" id="modal-img" src="img/child5.jpg" alt="child5.jpg">
                                                        <div class="caption">
                                                            <h3>Noiten Mansley</h3>
                                                            <div class="logo-span">
                                                                <table class="logo-table" id="logo-table">
                                                                    <tr>
                                                                        <td><i class="fas fa-globe-africa"></i></td>
                                                                        <td><i class="fas fa-birthday-cake"></i></td>
                                                                        <td><i class="fas fa-child"></i></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>인도네시아</td>
                                                                        <td>5세</td>
                                                                        <td>남</td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <p><a href="#" class="btn btn-inverse" role="button">결연하기</a></p>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-8">
                                                    <div class="modal-text">
                                                        <h2>안녕하세요? 제 이름은 노이텐이에요.</h2>

                                                        <br> 제가 좋아하는 음식은 빵이에요. <br> 제가 좋아하는 놀이는 야구에요.
                                                        <br> 저의 가족은 아빠와 엄마와 저에요. <br> 아직 후원자님을 뵙진 못 했지만 <br> 얼른 만나보고 싶어요.
                                                    </div>
                                                </div>
                                                <div class="maps">
                                                    <div id="googleMap5" style="width:100%; height:300px;"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <div class="table-title">
                                                <h1>양육목표</h1>
                                                <h5>정신적, 육체적으로 건강하게 성장하고 나아가 다른 아이들을 후원 할 수 있는 성인이 되는 것이 저희의 목표입니다.</h5>
                                            </div>
                                            <div class="table-body">
                                                <table class="table table-striped">
                                                    <tr>
                                                        <td>태아/영아</td>
                                                        <td>아이들이 생존 할 수 있도록 도와줍니다. 예방접종, 영양보충, 위생관리, 위급 상황시 의료지원 등을 제공합니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td>어린이 양육</td>
                                                        <td>영아들이 받는 기본지원을 제공받고 더불어 신앙교육, 교육지원, 놀이활동 등을 지원합니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td>청소년 교육</td>
                                                        <td>기본지원을 제공받고 더불어 직업훈련, 상담교육, 이성교육, 1:1 보충교육 등을 지원합니다.</td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal6 -->
                <div class="col-lg-4 col-xs-12 text-center">
                    <div class="thumbnail">
                        <img src="img/child6.jpg" alt="child6.jpg">
                        <div class="caption">
                            <h3>소피아</h3>
                            <p>
                                국가: 에티오피아 <br> 성별: 여 <br> 생년월일: 2017-03-26
                            </p>
                            <button type="button" class="btn btn-inverse" data-toggle="modal" data-target="#myModal6">
                            더 알아보기
                            </button>
                            <!-- Modal -->
                            <div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">어린이 정보</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-xs-6 col-md-4">
                                                    <div class="thumbnail">
                                                        <img class="img img-rounded" id="modal-img" src="img/child6.jpg" alt="child6.jpg">
                                                        <div class="caption">
                                                            <h3>Sophia Marquez</h3>
                                                            <div class="logo-span">
                                                                <table class="logo-table" id="logo-table">
                                                                    <tr>
                                                                        <td><i class="fas fa-globe-africa"></i></td>
                                                                        <td><i class="fas fa-birthday-cake"></i></td>
                                                                        <td><i class="fas fa-child"></i></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>에티오피아</td>
                                                                        <td>3세</td>
                                                                        <td>여</td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>
                                                        <p><a href="#" class="btn btn-inverse" role="button">결연하기</a></p>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-8">
                                                    <div class="modal-text">
                                                        <h2>안녕하세요? 제 이름은 소피아에요.</h2>

                                                        <br> 제가 좋아하는 음식은 스프에요. <br> 제가 좋아하는 놀이는 줄넘기에요.
                                                        <br> 저의 가족은 언니와 저에요. <br> 아직 후원자님을 뵙진 못 했지만 <br> 얼른 만나보고 싶어요.
                                                    </div>
                                                </div>
                                                <div class="maps">
                                                    <div id="googleMap6" style="width:100%; height:300px;"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <div class="table-title">
                                                <h1>양육목표</h1>
                                                <h5>정신적, 육체적으로 건강하게 성장하고 나아가 다른 아이들을 후원 할 수 있는 성인이 되는 것이 저희의 목표입니다.</h5>
                                            </div>
                                            <div class="table-body">
                                                <table class="table table-striped">
                                                    <tr>
                                                        <td>태아/영아</td>
                                                        <td>아이들이 생존 할 수 있도록 도와줍니다. 예방접종, 영양보충, 위생관리, 위급 상황시 의료지원 등을 제공합니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td>어린이 양육</td>
                                                        <td>영아들이 받는 기본지원을 제공받고 더불어 신앙교육, 교육지원, 놀이활동 등을 지원합니다.</td>
                                                    </tr>
                                                    <tr>
                                                        <td>청소년 교육</td>
                                                        <td>기본지원을 제공받고 더불어 직업훈련, 상담교육, 이성교육, 1:1 보충교육 등을 지원합니다.</td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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

 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
    <script src="js/bootstrap.min.js"></script>
    <!-- 부트스트랩 -->
</body>

</html>