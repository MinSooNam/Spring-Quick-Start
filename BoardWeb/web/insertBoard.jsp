<%--
  Created by IntelliJ IDEA.
  User: Namsoo
  Date: 2017. 11. 25.
  Time: ���� 3:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=EUC-KR" language="java" %>
<html>
<head>
    <title>���۵��</title>
</head>
<body>
<center>
    <h1>�� ���</h1>
    <a href="logout_proc.jsp">Log-out</a>
    <hr>

    <form action="insertBoard.do" method="post">
        <table border="1" cellpadding="0" cellspacing="0">
            <tr>
                <td bgcolor="orange" width="70">����</td>
                <td align="left">
                    <input type="text" name="title">
                </td>
            </tr>
            <tr>
                <td bgcolor="orange" >�ۼ���</td>
                <td align="left">
                    <input type="text" name="writer" size="10">
                </td>
            </tr>
            <tr>
                <td bgcolor="orange" >����</td>
                <td align="left">
                    <textarea name="content" cols="40" rows="10"></textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="���� ���"/>
                </td>
            </tr>
        </table>
    </form>

    <hr>
    <a href="WEB-INF/board/getBoardList.jsp">�� ��� ����</a>
</center>
</body>
</html>
