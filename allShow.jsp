<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.List, model.Model, entity.User"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>所有用户</title>
    <style>
        body { font-family: Arial, "Microsoft YaHei", sans-serif; text-align: center; margin-top: 30px; background: #f0f2f5; }
        table { width: 700px; margin: 0 auto; border-collapse: collapse; background: white; box-shadow: 0 0 20px rgba(0,0,0,0.1); }
        th, td { padding: 12px; border: 1px solid #ddd; }
        th { background: #28a745; color: white; }
        tr:hover { background: #f5f5f5; }
        .back { margin-top: 20px; display: inline-block; color: #007bff; text-decoration: none; }
        .count { color: #666; margin-bottom: 15px; font-size: 14px; }
        h2 { color: #28a745; }
    </style>
</head>
<body>
    <h2>📋 用户列表</h2>
<%
    List<User> userList = Model.getAllUsers();
%>
    <div class="count">✅ 共找到 <%= userList.size() %> 位用户</div>
    <table>
        <tr><th>ID</th><th>用户名</th><th>密码</th><th>邮箱</th></tr>
<%
    for(User user : userList) {
%>
        <tr>
            <td><%= user.getId() %></td>
            <td><%= user.getUsername() %></td>
            <td><%= user.getPassword() %></td>
            <td><%= user.getEmail() %></td>
        </tr>
<%
    }
%>
    </table>
    <br>
    <a href="index.jsp" class="back">← 返回首页</a>
</body>
</html>