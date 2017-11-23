<%@ page import="com.springbook.biz.board.impl.BoardDAO" %>
<%@ page import="com.springbook.biz.board.BoardVO" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Namsoo
  Date: 2017. 11. 9.
  Time: 오후 2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // 1. 사용자 입력 정보 추출(검색 기능은 나중에)
    // 2. DB 연동 처리
    BoardVO vo = new BoardVO();
    BoardDAO boardDAO = new BoardDAO();
    List<BoardVO> boardList = boardDAO.getBoardList(vo);

    // 3. 응답 화면 구성
%>

<%--<!DOCTYPE html PUBLIC "-/....">--%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>글 목록</title>
</head>
<body>
<center>
    <h1>글 목록</h1>
    <h3>테스트님 환영합니다...<a href="logout_proc.jsp">Log-out</a></h3>

    <%--검색 시작--%>
    <form action="getBoardList.jsp" method="post">
        <table border="1" cellpadding="0" cellspacing="0" width="700">
            <tr>
                <td align="right">
                    <select name="searchCondition">
                        <option value="TITLE">제목</option>
                        <option value="CONTENT">내용</option>
                    </select>
                    <input name="searchKeyword" type="text"/>
                    <input type="submit" value="검색">
                </td>
            </tr>
        </table>
    </form>
    <%--검색 종료--%>

    <table border="1" cellpadding="0" cellspacing="0" width="700">
        <tr>
            <td bgcolor="orange" width="100">번호</td>
            <td bgcolor="orange" width="200">제목</td>
            <td bgcolor="orange" width="150">작성자</td>
            <td bgcolor="orange" width="150">등록일</td>
            <td bgcolor="orange" width="100">조회수</td>
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
    <a href="insertBoard.jsp">새 글 등록</a>
</center>
</body>
</html>