<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/taglib.jsp"%>
<link rel="stylesheet" href="${path}/css}/css/article.css">
<form name="frmReply" method="post" action="${contextPath}/board/addReply.do" enctype="multipart/form-data">
	<table>
		<tr>
			<td>글쓴이 </td>
			<td><input type="text" size="5" value="" disabled /></td>
		</tr>
		<tr>
			<td">글제목 </td>
				<td><input type="text" size="70" maxlength="100" name="title" /></td>
		</tr>
		<tr>
			<td><br>글내용 </td>
			<td><textarea name="content" rows="10" cols="65" maxlength="4000"> </textarea></td>
		</tr>
		<tr>
			<td>이미지파일 첨부 </td>
			<td><input type="file" name="imageFileName" onChange="readURL(this);" /></td>
			<td><img id="preview" src="#" width=200 height=200 /></td>
		</tr>
		<tr>
			<td><input type=submit value="답글" /> <input type=button value="취소" onClick="backToList(this.form)" /></td>
		</tr>
	</table>
</form>