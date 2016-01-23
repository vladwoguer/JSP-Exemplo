<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exemplo simples de JSP</title>
</head>
<body>
  <%
    double num = Math.random();
    if (num > 0.5) {
  %>
      <h2>Seu número sorteado foi maior que 0.5</h2><p>(<%= num %>)</p>
  <%
    } else {
  %>
      <h2>Seu número sorteado foi menor ou igual a 0.5</h2><p>(<%= num %>)</p>
  <%
    }
  %>
  <%-- Da um refresh na página --%>
  <h3><a href="<%= request.getRequestURI() %>">Sorteia novamente</a></h3>
</body>
</html>