<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP파일업로드</title>
</head>

<body>

 

    <form action="uploadAction.jsp" method="post" enctype="multipart/form-data">

        파일 : <input type="file" name=file1><br>
		파일 : <input type="file" name=file2><br>
		파일 : <input type="file" name=file3><br>
        <input type="submit" value="업로드"> 

    </form>
	<br>
	 
</body>

</html>

