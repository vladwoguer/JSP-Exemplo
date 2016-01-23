<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pega parâmetros</title>
</head>
<body>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
  <h3>Digite seu nome:</h3>
  <form method="get">
 	Nome: <input type="text" name="nome" >
    <input type="checkbox" name="formatacao" value="negrito">Negrito
    <input type="checkbox" name="formatacao" value="italico">Itálico
    <input type="checkbox" name="formatacao" value="sublinhado">Sublinhado
  
    <input type="submit" value="Aplicar">
  </form>
 
  <%
  String[] formatacao = request.getParameterValues("formatacao");
  
  if (formatacao != null) {
 	  List<String> formatacoes = new ArrayList<String>();
      for (int i = 0; i < formatacao.length; ++i) {
  			formatacoes.add(formatacao[i]);
      }
  %>
  <% if(formatacoes.contains("negrito")){ %>
  	<b>
  <%} %>
  
   <% if(formatacoes.contains("italico")){ %>
  	<i>
  <%} %>
  
   <% if(formatacoes.contains("sublinhado")){ %>
  	<u>
  <%} %>
   <span><% String[] nome = request.getParameterValues("nome"); 
   if(nome != null && nome.length >0)%>
   <%=nome[0] %>
   </span>
    <% if(formatacoes.contains("sublinhado")){ %>
  	</u>
  <%} %>
  
    <% if(formatacoes.contains("italico")){ %>
  	</i>
  <%} %>
  
    <% if(formatacoes.contains("negrito")){ %>
  	</b>
  <%} %>
 
    
    
  <%
  }
  %>
</body>
</html>