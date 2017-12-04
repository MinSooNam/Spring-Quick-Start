<%--
  Created by IntelliJ IDEA.
  User: Namsoo
  Date: 2017. 11. 9.
  Time: ���� 2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>�� ���</title>
</head>
<body>
<center>
    <h1>�� ���</h1>
    <h3>�׽�Ʈ�� ȯ���մϴ�...<a href="logout.do">Log-out</a></h3>

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

        <c:forEach items="${boardList}" var="board">
            <tr>
                <td>${board.seq}</td>
                <td align="left"><a href="getBoard.do?seq=${board.seq}">${board.title}</a></td>
                <td>${board.writer}</td>
                <td>${board.regDate}</td>
                <td>${board.cnt}</td>
            </tr>
        </c:forEach>

    </table>
    <br>
    <a href="../../insertBoard.jsp">�� �� ���</a>
</center>
</body>
</html>
