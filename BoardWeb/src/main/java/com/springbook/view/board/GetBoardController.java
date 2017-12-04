package com.springbook.view.board;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by Namsoo on 2017. 12. 2..
 */
public class GetBoardController implements Controller {
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("글 상세 조회 처리");

            //1. 검색할 게시글 번호 추출
            String seq = request.getParameter("seq");

            //2. DB 연동 처리
            BoardVO vo = new BoardVO();
            vo.setSeq(Integer.parseInt(seq));

            BoardDAO boardDAO = new BoardDAO();
            BoardVO board = boardDAO.getBoard(vo);

            //3. 검색 결과를 세션에 저장하고 상세 화면으로 이동한다
            ModelAndView mav = new ModelAndView();
            mav.addObject("board", board);
            mav.setViewName("getBoard");
            return mav;
    }
}