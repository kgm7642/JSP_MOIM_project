<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<!--
	Formula by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
<title>게시판 관리 [admin]</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
</head>
<style>
#wrapper {
	margin-left: auto;
	margin-right: auto;
	text-align: center;
}

table, tr, th, td {
	text-align: center;
	align: center;
	valign: middle;
}
td{
	overflow:hidden;
	white-space : nowrap;
	text-overflow: ellipsis;
}
table{
	table-layout: fixed;
}

.custom-btn {
	width: 240px;
	height: 40px;
	color: #fff;
	border-radius: 5px;
	padding: 10px 25px;
	font-family: 'Lato', sans-serif;
	font-weight: 500;
	background: transparent;
	cursor: pointer;
	transition: all 0.3s ease;
	position: relative;
	display: inline-block;
	box-shadow: inset 2px 2px 2px 0px rgba(255, 255, 255, .5), 7px 7px 20px
		0px rgba(0, 0, 0, .1), 4px 4px 5px 0px rgba(0, 0, 0, .1);
	outline: none;
}
/* 12 */
.btn-12 {
	position: relative;
	right: 20px;
	bottom: 20px;
	border: none;
	box-shadow: none;
	width: 240px;
	height: 40px;
	line-height: 42px;
	-webkit-perspective: 230px;
	perspective: 230px;
}

.btn-12 span {
	background: rgb(247, 150, 192);
	background: linear-gradient(0deg, rgba(247, 150, 192, 1) 0%,
		rgba(118, 174, 241, 1) 100%);
	display: block;
	position: absolute;
	width: 240px;
	height: 40px;
	box-shadow: inset 2px 2px 2px 0px rgba(255, 255, 255, .5), 7px 7px 20px
		0px rgba(0, 0, 0, .1), 4px 4px 5px 0px rgba(0, 0, 0, .1);
	border-radius: 5px;
	margin: 0;
	text-align: center;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	-webkit-transition: all .3s;
	transition: all .3s;
}

.btn-12 span:nth-child(1) {
	box-shadow: -7px -7px 20px 0px #fff9, -4px -4px 5px 0px #fff9, 7px 7px
		20px 0px #0002, 4px 4px 5px 0px #0001;
	-webkit-transform: rotateX(90deg);
	-moz-transform: rotateX(90deg);
	transform: rotateX(90deg);
	-webkit-transform-origin: 50% 50% -20px;
	-moz-transform-origin: 50% 50% -20px;
	transform-origin: 50% 50% -20px;
}

.btn-12 span:nth-child(2) {
	-webkit-transform: rotateX(0deg);
	-moz-transform: rotateX(0deg);
	transform: rotateX(0deg);
	-webkit-transform-origin: 50% 50% -20px;
	-moz-transform-origin: 50% 50% -20px;
	transform-origin: 50% 50% -20px;
}

.btn-12:hover span:nth-child(1) {
	box-shadow: inset 2px 2px 2px 0px rgba(255, 255, 255, .5), 7px 7px 20px
		0px rgba(0, 0, 0, .1), 4px 4px 5px 0px rgba(0, 0, 0, .1);
	-webkit-transform: rotateX(0deg);
	-moz-transform: rotateX(0deg);
	transform: rotateX(0deg);
}

.btn-12:hover span:nth-child(2) {
	box-shadow: inset 2px 2px 2px 0px rgba(255, 255, 255, .5), 7px 7px 20px
		0px rgba(0, 0, 0, .1), 4px 4px 5px 0px rgba(0, 0, 0, .1);
	color: transparent;
	-webkit-transform: rotateX(-90deg);
	-moz-transform: rotateX(-90deg);
	transform: rotateX(-90deg);
}

.box {
	width: 100%;
	height: 300px;
	padding: 0px;
}

.todayMoimList {
	overflow-y: scroll;
}

.todayMoimListTable th {
	position: sticky;
	top: 0px;
}

.th1 {
	background-color: #E0EDF2;
}

.th2 {
	background-color: #FAE7F4;
}

.todayMoimListTR {
	border: none;
}
.board{
	cursor:pointer;
}
</style>

<body class="is-preload">

	<c:set var="cp" value="${pageContext.request.contextPath}" />

	<c:if test="${session.userid == null}">
		<script>
			alert("로그인 후 이용하세요!");
			location.replace("${pageContext.request.contextPath}/user/UserLogin.us");
		</script>
	</c:if>
	<c:if test="${not empty param.delete }">
		<script>
			alert("게시글 삭제 완료!")
		</script>
	</c:if>

	<c:set var="boardList" value="${requestScope.boardList}" />
	<c:set var="page" value="${requestScope.page}" />
	<c:set var="startPage" value="${requestScope.startPage}" />
	<c:set var="endPage" value="${requestScope.endPage}" />
	<c:set var="totalCnt" value="${requestScope.totalCnt}" />
	<c:set var="totalPage" value="${requestScope.totalPage}" />

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->

		<header id="header">
			<a href="${cp}/index/Index.ix" class="logo"><span>admin(관리자)</span></a>
			<nav>
				<ul>
					<li><a href="#menu">Menu</a></li>
				</ul>
			</nav>
		</header>

		<!-- Menu -->

		<nav id="menu">
			<ul class="links">
				<li><a href="${cp}/index/Index.ix">Home</a></li>
				<li><a href="${cp}/admin/MoimList.ad">모임 관리</a></li>
				<li><a href="${cp}/admin/AdminMoimBoard.ad">홍보 게시판 관리</a></li>
				<li><a href="${cp}/admin/AdminBoardList.ad">게시판 관리</a></li>
				<li><a href="${cp}/admin/AdminNoticeList.ad">공지사항 관리</a></li>
			</ul>
			<ul class="actions stacked">
				<c:if test="${session.userid == null}">
					<li><a href="${cp}/user/UserJoin.us"
						class="button primary fit">SIGN UP</a></li>
					<li><a href="${cp}/user/UserLogin.us" class="button fit">LOGIN</a></li>
				</c:if>
				<c:if test="${session.userid != null }">
					<li><a href="${cp}/user/UserLogoutOk.us"
						class="button primary fit">LOGOUT</a></li>
				</c:if>
			</ul>
		</nav>

		<!-- Banner -->
		<section id="banner" data-video="images/banner">
			<div class="inner">
				<header>
					<h1>게시판 관리</h1>
				</header>
				<ul class="actions special">
				</ul>
			</div>
			<a href="#wrapper" class="more">Learn More</a>
			<video src="images/banner.mp4" muted autoplay loop playsinline></video>
		</section>

		<!-- Wrapper -->

		<div id="wrapper">
			<section id="main" class="main">
				<div class="inner">
					<table class="list"
						style="margin-left: auto; margin-right: auto; text-align: center;">
						<tr align="center" valign="middle">
							<th width="10%" style="text-align:center;padding:10px;background-color:#E0EDF2"><strong>번호</strong></th>
							<th width="40%" style="text-align:center;padding:10px;background-color:#E0EDF2"><strong>제목</strong></th>
							<th width="10%" style="text-align:center;padding:10px;background-color:#E0EDF2"><strong>작성자</strong></th>
							<th width="20%" style="text-align:center;padding:10px;background-color:#E0EDF2"><strong>날짜</strong></th>
							<th width="10%" style="text-align:center;padding:10px;background-color:#E0EDF2"><strong>조회수</strong></th>
							<th width="10%" style="text-align:center;padding:10px;background-color:#E0EDF2"><strong>싫어요</strong></th>
						</tr>
						<c:choose>
							<c:when test="${boardList.size()>0 and boardList != null }">
								<c:forEach var="board" items="${boardList }">
									<tr class="board" id="board${board.boardnum}" onClick="location.href='${cp}/admin/AdminBoardView.ad?boardnum=${board.boardnum}&page=${page}&keyword=${keyword}'" onmouseover="this.style.background='#eeeeeb'" onmouseout="this.style.background='white'">
										<c:if test="${board.userid != 'admin'}">
											<td>${board.boardnum}</td>
											<td>${board.boardtitle}</td>
											<td>${board.userid}</td>
											<td>${board.regdate}</td>
											<td>${board.views}</td>
											<td>${board.dislike}</td>
										</c:if>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="5"
										style="text-align: center; font-size: 20px;">
										<strong>등록된 게시글이 없습니다</strong></td>
								</tr>
							</c:otherwise>
						</c:choose>
					</table>
					<br>

					<!-- 페이징 처리하는 테이블 -->

					<table class="pagination"
						style="margin-left: auto; margin-right: auto;">
						<tr align="center" valign="middle">
							<td><c:if test="${page>1}">
									<a href="${cp}/admin/AdminBoardList.ad?page=${page-1}&keyword=${keyword}">&lt;</a>
								</c:if> <c:forEach begin="${startPage}" end="${endPage}" step="1"
									var="i">
									<c:choose>
										<c:when test="${page == i}">
											<span class="nowPage">${i}</span>
										</c:when>
										<c:otherwise>
											<a href="${cp}/admin/AdminBoardList.ad?page=${i}&keyword=${keyword}">${i}</a>
										</c:otherwise>
									</c:choose>
								</c:forEach> <c:if test="${page<totalPage}">
									<a href="${cp}/admin/AdminBoardList.ad?page=${page+1}&keyword=${keyword}">&gt;</a>
								</c:if></td>
						</tr>
					</table>
					<!-- 글쓰기 버튼 배치하는 테이블 -->
					<table
						style="align: center; border: 0px; margin-left: auto; margin-right: auto;">
						<tr class="search_area">
							<td><input style="width: 20%;" type="search" id="q" name="q">
								<input type="button" value="검색" onclick="search()"></td>
						</tr>
					</table>
				</div>
			</section>
		</div>

		<!-- Footer -->

		<footer id="footer">
			<div class="inner">
				<ul class="icons">
					<li><a href="#" class="icon brands alt fa-twitter"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands alt fa-facebook-f"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands alt fa-youtube"><span
							class="label">YouTube</span></a></li>
					<li><a href="#" class="icon brands alt fa-instagram"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon solid alt fa-envelope"><span
							class="label">Email</span></a></li>
				</ul>
			</div>
			<p class="copyright">&copy; TOGETHER. All rights reserved.</p>
		</footer>
	</div>
</body>

<!-- Scripts -->
<script src="${cp}/assets/js/jquery.min.js"></script>
<script src="${cp}/assets/js/jquery.scrolly.min.js"></script>
<script src="${cp}/assets/js/jquery.scrollex.min.js"></script>
<script src="${cp}/assets/js/browser.min.js"></script>
<script src="${cp}/assets/js/breakpoints.min.js"></script>
<script src="${cp}/assets/js/util.js"></script>
<script src="${cp}/assets/js/main.js"></script>
<script>
		function search(){
			let q = document.getElementById("q");
			if(q.value.length>10 || q.value.length<2) {
				alert("검색어는 2자 이상 10자 이하로 입력해 주세요!")
				q.focus();
				return false;
			}
			location.href="${cp}/admin/AdminBoardList.ad?keyword="+q.value
		}
		</script>

</html>