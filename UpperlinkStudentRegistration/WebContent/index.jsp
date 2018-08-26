<%@page import="java.util.Set" %>
<%@page import="java.util.HashSet" %>
<%@page import="java.util.Random" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<form action="UploadRegistrstion" method="POST" enctype="multipart/form-data">
			<br/><br/>
			<label>First name</label>
			<input type="text" name='firstname' placeholder="firstname" /><br><br>
			<label>Surname</label>
			<input type="text" name='surname' placeholder="surname" /><br><br>
			<label>Phone number</label>
			<input type="text" name='phonenumber' placeholder="Phonenunber" /><br><br>
			<label>Email address</label>
			<input type="email" name='email' placeholder="email" /><br><br>
			<label>cover letter</label>
			<textarea type="text" name='coverletter' rows='10' col='30'> </textarea><br><br>
			<label>Passport</label>
			<input type="file" name='passport' placeholder="passport"  /><br><br>
			<label>Resume</label>
			<input type="file" name='resume' placeholder="resume"/><br>
			<input type="submit" value="submit">
			
			
	</form>
</body>
</html>