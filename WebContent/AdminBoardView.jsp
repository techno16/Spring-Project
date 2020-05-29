<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>AdminBoardView</title>
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
          
                    <h1 class="membertitle">게시판관리 상세보기</h1>
                    <div class="container" style="margin-top: 180px; margin-bottom: 300px;">
                        <div class="row">
                
                            <table class="table table-bordered" style="text-align: center; border: 1px solid #dddddd; font-family: 'Noto Sans KR', sans-serif;">
                                <thead>
                                    <tr>
                                        <th colspan="4" style="background-color: #eeeeee; text-align: center;">게시판 상세보기</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>글번호</td>
                                        <td>1</td>
                                        <td>조회수</td>
                                        <td>30</td>
                                    </tr>
                                    <tr>
                                        <td>작성자</td>
                                        <td>홍길동</td>
                                        <td>작성날짜</td>
                                        <td>2020-03-20</td>
                                    </tr>
                                    <tr>
                                        <td style="width: 20%;">ip 주소</td>
                                        <td colspan="3">ip 주소 </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 20%;">글 제목</td>
                                        <td colspan="3">글제목 </td>
                                    </tr>
                                    <tr>
                                        <td>내용</td>
                                        <td colspan="3" style="min-height: 200px; text-align: left;">내용 </td>
                                    </tr>
                                </tbody>
                            </table>
                
                            <a herf="board.jsp" class="btn btn-main pull-right">목록</a>
                            <a herf="board.jsp" class="btn btn-main pull-right" style="margin-right: 2px;">답글</a>
                            <a herf="updateBoard.jsp" class="btn btn-main">수정</a>
                            <a herf="deleteAction.jsp" class="btn btn-main">삭제</a>
                
                
                        </div>
                    </div>
    <!-- /#wrapper -->

  
   




  <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
  <script src="js/bootstrap.min.js"></script>
</body>
</html>