<%@ page import="com.springbook.biz.board.BoardVO" %>
<%@ page import="com.springbook.biz.board.impl.BoardDAO" %><%--
  Created by IntelliJ IDEA.
  User: Namsoo
  Date: 2017. 11. 25.
  Time: ���� 4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>

<%
    //1. ����� �Է� ���� ����
    request.setCharacterEncoding("EUC-KR");
    String title = request.getParameter("title");
    String seq = request.getParameter("seq");
    String content = request.getParameter("content");

    //2. DB���� ó��
    BoardVO vo = new BoardVO();
    vo.setTitle(title);
    vo.setSeq(Integer.parseInt(seq));
    vo.setContent(content);

    BoardDAO boardDAO = new BoardDAO();
    boardDAO.updateBoard(vo);

    //3. ȭ�� �׺���̼�
    response.sendRedirect("getBoardList.jsp");
%>

