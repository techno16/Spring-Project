<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>AdminBoard</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
  <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
  
  <!-- 부트스트랩 -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/sidebar.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
</head>
<body>
    <div id="wrapper" class="toggled">

        <!-- Sidebar -->
        <div id="sidebar-wrapper" id="myScrollspy">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">
                        관리자 페이지
                    </a>
                </li>
                <li class="active"><a href="AdminMember.jsp">가입자정보 관리</a></li>
                <li><a href="AdminBoard.jsp">자유게시판 관리</a></li>
                <li><a href="AdminSubscribe.jsp">구독신청자 목록</a></li>
                <li><a href="AdminChildren.jsp">후원아동 관리</a></li>
                <li><a href="AdminQNA.jsp">문의사항 관리</a></li>   
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div role="tabpanel" id="membertable"> 
          
                    <h1 class="membertitle">게시판관리</h1>
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
                                <td>1</td>
                                <td>안녕하세요</td>
                                <td>홍길동</td>
                                <td>2020.3.20</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>안녕하세요</td>
                                <td>홍길동</td>
                                <td>2020.3.20</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>안녕하세요</td>
                                <td>홍길동</td>
                                <td>2020.3.20</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>안녕하세요</td>
                                <td>홍길동</td>
                                <td>2020.3.20</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>안녕하세요</td>
                                <td>홍길동</td>
                                <td>2020.3.20</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>안녕하세요</td>
                                <td>홍길동</td>
                                <td>2020.3.20</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>안녕하세요</td>
                                <td>홍길동</td>
                                <td>2020.3.20</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>안녕하세요</td>
                                <td>홍길동</td>
                                <td>2020.3.20</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>안녕하세요</td>
                                <td>홍길동</td>
                                <td>2020.3.20</td>
                                <td>0</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>안녕하세요</td>
                                <td>홍길동</td>
                                <td>2020.3.20</td>
                                <td>0</td>
                            </tr>
                        </tbody>
                    </table>
                    
                    <a herf="#" class="btn btn-main pull-right">글쓰기</a>
        
                    <div class="col-sm-12">
                        <div class="row">
                            <ul class="pagination">
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
        </div>
    </div>
    <!-- /#wrapper -->

  
   




  <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
  <script src="js/bootstrap.min.js"></script>
</body>
</html>