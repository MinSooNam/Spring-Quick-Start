<%--
  Created by IntelliJ IDEA.
  User: Namsoo
  Date: 2017. 11. 25.
  Time: ���� 4:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>

<%
    //1. �������� ����� ���� ��ü�� ���� �����Ѵ�
    session.invalidate();

    //2. ���� ���� ��, ���� ȭ������ �̵��Ѵ�
    response.sendRedirect("login.jsp");
%>