<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>

<%
 session.removeAttribute("access");
 session.removeAttribute("login");
 out.print("<script>alert('登出成功！');location.href='index.jsp'</script>");
%>