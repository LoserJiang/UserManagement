<%@ page import="model.Model, entity.User" %>
<%
    request.setCharacterEncoding("UTF-8");
    
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    
    User user = new User();
    user.setUsername(username);
    user.setPassword(password);
    user.setEmail(email);
    
    int result = Model.addUser(user);
    
    if(result > 0) {
        out.println("<script>alert('✅ 添加成功！'); window.location.href='allShow.jsp';</script>");
    } else {
        out.println("<script>alert('❌ 添加失败！'); history.back();</script>");
    }
%>