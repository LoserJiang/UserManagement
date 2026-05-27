<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="model.Model"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>删除处理</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String idStr = request.getParameter("id");
    
    if(idStr != null && !idStr.isEmpty()) {
        int id = Integer.parseInt(idStr);
        int result = Model.deleteUser(id);
        
        if(result > 0) {
            out.println("<script>alert('删除成功！'); window.location.href='allShow.jsp';</script>");
        } else {
            out.println("<script>alert('删除失败！用户ID可能不存在'); history.back();</script>");
        }
    } else {
        out.println("<script>alert('请输���用户ID！'); history.back();</script>");
    }
%>
</body>
</html>