<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<C:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.cls1 {
	text-decoration: none;
}
.cls2 {
	text-align: center;
	font-size: 30px;
}
</style>
<meta charset="UTF-8">
<title>Board 창</title>
</head>
<body>
	<table align="center" border="1" width="80%" >
		<tr height="10" align="center" bgcolor="yellow">
			<td>글번호</td>
			<td>작성자</td>
			<td>제목</td>
			<td>이미지파일</td>
			<td>작성일</td>
		</tr>
		<C:choose>
			<C:when test="${articlesList == null}">
				<tr height="10">
					<td colspan="4">
						<p align="center">
							<b><span style="font-size:9pt;">등록된 글이 없습니다.</span></b>
						</p>
					</td>
				</tr>
			</C:when>
			<C:when test="${articlesList !=null }">
				<C:forEach var="article" items="${articlesList}" varStatus = "articleNum">
					<tr align="center">
						<td width="5%">${articleNum.count}</td>
						<td width="10%">${article.id}</td>
						<td align="left" width="35%">
							<span style="padding-right: 30px"></span>
							<C:choose>
								<C:when test='${article.level > 1}'>
									<C:forEach begin="1" end="${article.level}" step="1">
										<span style="padding-left: 20px"></span>
									</C:forEach>
									<span style="font-size: 12px;">[답변]</span>
									<a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
								</C:when>
								<C:otherwise>
									<a class='cls1' href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
								</C:otherwise>
							</C:choose>
						</td>
						<td width="5%">${article.imageFileName}</td>
						<td width="10%">
							<fmt:formatDate value="${article.writeDate}"/>
						</td>
					</tr>
				</C:forEach>
			</C:when>
		</C:choose>
	</table>
	<a class="cls1" href="${contextPath}/board/articleForm.do">
		<p class="cls2">글쓰기</p>
	</a>
</body>
</html> --%>