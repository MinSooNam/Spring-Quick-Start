package com.springbook.view.controller;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Namsoo on 2017. 12. 2..
 */
public class InsertBoardController implements Controller{
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("글 등록 처리");

            //1. 사용자 입력 정보 추출
            //request.setCharacterEncoding("EUC-KR");
            String title = request.getParameter("title");
            String writer = request.getParameter("writer");
            String content = request.getParameter("content");

            //2. DB연동 처리
            BoardVO vo = new BoardVO();
            vo.setTitle(title);
            vo.setWriter(writer);
            vo.setContent(content);

            BoardDAO boardDAO = new BoardDAO();
            boardDAO.insertBoard(vo);

            //3. 화면 네비게이션
            return "getBoardList.do";
    }
}
