<%--
  Created by IntelliJ IDEA.
  User: Namsoo
  Date: 2017. 11. 9.
  Time: ���� 2:35
  To change this template use File | Settings | File Templates.
--%>
<%@page import="com.springbook.biz.user.impl.UserDAO" %>
<%@ page import="com.springbook.biz.user.UserVO" %>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>

<%
    // 1. ����� �Է� ���� ����
    String id = request.getParameter("id");
    String password = request.getParameter("password");

    // 2. DB ���� ó��
    UserVO vo = new UserVO();
    vo.setId(id);
    vo.setPassword(password);

    System.out.println("id : "+id+" pw : "+password);

    UserDAO userDAO = new UserDAO();
    UserVO user = userDAO.getUser(vo);

    // 3. ȭ�� �׺���̼�
    if (user != null) {
        response.sendRedirect("getBoardList.jsp");
    } else {
        response.sendRedirect("login.jsp");
    }
%>