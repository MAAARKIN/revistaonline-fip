<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload de Arquivos</title>
</head>
<body>

	<form action="<c:url value="/upload/file"/>" method="POST" enctype="multipart/form-data">
		<fieldset>
			<legend>Upload de arquivo</legend>
			<input id="file" input type="file" name="file" />
			<button type="submit">Enviar</button>
		</fieldset>
	</form>


</body>
</html>