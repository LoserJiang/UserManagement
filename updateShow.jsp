<%@ page import="model.Model, entity.User" %>
<%
    request.setCharacterEncoding("UTF-8");
    
    int id = Integer.parseInt(request.getParameter("id"));
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    
    User user = new User();
    user.setId(id);
    user.setUsername(username);
    user.setPassword(password);
    user.setEmail(email);
    
    int result = Model.updateUser(user);
    
    if(result > 0) {
        out.println("<script>alert('✅ 更新成功！'); window.location.href='allShow.jsp';</script>");
    } else {
        out.println("<script>alert('❌ 更新失败！用户ID可能不存在'); history.back();</script>");
    }
%>