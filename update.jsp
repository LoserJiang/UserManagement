<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>更新用户</title>
    <style>
        body { font-family: Arial; text-align: center; margin-top: 50px; background: #f0f2f5; }
        .form { width: 400px; margin: 0 auto; padding: 30px; background: white; border-radius: 10px; box-shadow: 0 0 20px rgba(0,0,0,0.1); }
        h2 { color: #ffc107; }
        input { width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ddd; border-radius: 5px; }
        button { background: #ffc107; color: #333; padding: 12px 25px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; }
        button:hover { background: #e0a800; }
        .back { margin-top: 20px; display: inline-block; color: #007bff; text-decoration: none; }
    </style>
</head>
<body>
    <h2>✏️ 更新用户信息</h2>
    <div class="form">
        <form action="updateShow.jsp" method="post">
            <label>用户ID：</label>
            <input type="number" name="id" required placeholder="输入要更新的用户ID">
            <label>新用户名：</label>
            <input type="text" name="username" required placeholder="请输入新用户名">
            <label>新密码：</label>
            <input type="password" name="password" required placeholder="请输入新密码">
            <label>新邮箱：</label>
            <input type="email" name="email" placeholder="新邮箱地址">
            <button type="submit">💾 确认更新</button>
        </form>
    </div>
    <a href="index.jsp" class="back">← 返回首页</a>
</body>
</html>