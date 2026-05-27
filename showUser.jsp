<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="model.Model, entity.User"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户信息</title>
    <style>
        body { font-family: Arial, "Microsoft YaHei", sans-serif; text-align: center; margin-top: 50px; background: #f0f2f5; }
        .result { width: 450px; margin: 0 auto; background: white; border-radius: 10px; padding: 20px; box-shadow: 0 0 20px rgba(0,0,0,0.1); }
        table { width: 100%; border-collapse: collapse; margin-top: 10px; }
        th, td { padding: 12px; border: 1px solid #ddd; text-align: left; }
        th { background: #007bff; color: white; width: 30%; }
        .back { margin-top: 20px; display: inline-block; color: #007bff; text-decoration: none; margin: 10px; }
        .error { color: red; font-size: 18px; }
    </style>
</head>
<body>
    <h2>用户详细信息</h2>
    <div class="result">
<%
    request.setCharacterEncoding("UTF-8");
    String idStr = request.getParameter("id");
    if(idStr != null && !idStr.isEmpty()) {
        int id = Integer.parseInt(idStr);
        User user = Model.getUserById(id);
        if(user != null) {
%>
        <table>
            <tr><th>字段</th><th>值</th></tr>
            <tr><td>用户ID</td><td><%= user.getId() %></td></tr>
            <tr><td>用户名</td><td><%= user.getUsername() %></td></tr>
            <tr><td>密码</td><td><%= user.getPassword() %></td></tr>
            <tr><td>邮箱</td><td><%= user.getEmail() %></td></tr>
        </table>
<%
        } else {
            out.println("<p class='error'>未找到ID为 " + id + " 的用户！</p>");
        }
    } else {
        out.println("<p class='error'>请输入用户ID！</p>");
    }
%>
    </div>
    <a href="search.jsp" class="back">← 返回查询页面</a>
    <a href="index.jsp" class="back">返回首页</a>
</body>
</html>