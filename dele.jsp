<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>删除用户</title>
    <style>
        body { font-family: Arial; text-align: center; margin-top: 50px; background: #f0f2f5; }
        .del-box { width: 350px; margin: 0 auto; padding: 30px; background: white; border-radius: 10px; box-shadow: 0 0 20px rgba(0,0,0,0.1); }
        h2 { color: #dc3545; }
        input { width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ddd; border-radius: 5px; }
        button { background: #dc3545; color: white; padding: 12px 25px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; }
        button:hover { background: #c82333; }
        .warning { color: #dc3545; font-size: 14px; margin-bottom: 15px; }
        .back { margin-top: 20px; display: inline-block; color: #007bff; text-decoration: none; }
    </style>
</head>
<body>
    <h2>❌ 删除用户</h2>
    <div class="del-box">
        <div class="warning">⚠️ 警告：删除后无法恢复！</div>
        <form action="deleShow.jsp" method="post" onsubmit="return confirm('⚠️ 确定要删除该用户吗？');">
            <label>用户ID：</label>
            <input type="number" name="id" required placeholder="请输入要删除的用户ID">
            <button type="submit">🗑️ 删除用户</button>
        </form>
    </div>
    <a href="index.jsp" class="back">← 返回首页</a>
</body>
</html>