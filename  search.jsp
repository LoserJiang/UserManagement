<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>查询用户</title>
    <style>
        body { font-family: Arial; text-align: center; margin-top: 50px; background: #f0f2f5; }
        .search-box { width: 350px; margin: 0 auto; padding: 30px; background: white; border-radius: 10px; box-shadow: 0 0 20px rgba(0,0,0,0.1); }
        h2 { color: #007bff; }
        input { width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ddd; border-radius: 5px; }
        button { background: #007bff; color: white; padding: 12px 25px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; }
        button:hover { background: #0056b3; }
        .back { margin-top: 20px; display: inline-block; color: #007bff; text-decoration: none; }
    </style>
</head>
<body>
    <h2>🔍 查询用户信息</h2>
    <div class="search-box">
        <form action="showUser.jsp" method="post">
            <label>请输入用户ID：</label>
            <input type="number" name="id" required placeholder="例如：1">
            <button type="submit">🔍 查询</button>
        </form>
    </div>
    <a href="index.jsp" class="back">← 返回首页</a>
</body>
</html>