<%@ page import="com.springbook.biz.board.impl.BoardDAO" %>
<%@ page import="com.springbook.biz.board.BoardVO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Namsoo
  Date: 2017. 11. 9.
  Time: ���� 2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>

<%
    // 1. ����� �Է� ���� ����(�˻� ����� ���߿�)
    // 2. DB ���� ó��
    BoardVO vo = new BoardVO();
    BoardDAO boardDAO = new BoardDAO();
    List<BoardVO> boardList = boardDAO.getBoardList(vo);

    // 3. ���� ȭ�� ����
%>

<%--<!DOCTYPE html PUBLIC "-/....">--%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>�� ���</title>
</head>
<body>
<center>
    <h1>�� ���</h1>
    <h3>�׽�Ʈ�� ȯ���մϴ�...<a href="logout_proc.jsp">Log-out</a></h3>

    <%--�˻� ����--%>
    <form action="getBoardList.jsp" method="post">
        <table border="1" cellpadding="0" cellspacing="0" width="700">
            <tr>
                <td align="right">
                    <select name="searchCondition">
                        <option value="TITLE">����</option>
                        <option value="CONTENT">����</option>
                    </select>
                    <input name="searchKeyword" type="text"/>
                    <input type="submit" value="�˻�">
                </td>
            </tr>
        </table>
    </form>
    <%--�˻� ����--%>

    <table border="1" cellpadding="0" cellspacing="0" width="700">
        <tr>
            <td bgcolor="orange" width="100">��ȣ</td>
            <td bgcolor="orange" width="200">����</td>
            <td bgcolor="orange" width="150">�ۼ���</td>
            <td bgcolor="orange" width="150">�����</td>
            <td bgcolor="orange" width="100">��ȸ��</td>
        </tr>

        <%for (BoardVO board : boardList) {%>
        <tr>
            <td><%=board.getSeq()%>
            </td>
            <td align="left"><a href="getBoard.jsp?seq=<%= board.getSeq()%>">
                <%=board.getTitle()%>
            </a></td>
            <td><%=board.getWriter()%>
            </td>
            <td><%=board.getRegDate()%>
            </td>
            <td><%=board.getCnt()%>
            </td>
        </tr>
        <%}%>
    </table>
    <br>
    <a href="insertBoard.jsp">�� �� ���</a>
</center>
</body>
</html>
