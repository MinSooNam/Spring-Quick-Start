package com.springbook.view.board;

import com.springbook.biz.board.BoardVO;
import com.springbook.biz.board.impl.BoardDAO;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by Namsoo on 2017. 12. 2..
 */
public class DeleteBoardController implements Controller {
    public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("글 삭제 처리");

            //1. 사용자 입력 정보 추출
            String seq = request.getParameter("seq");

            //2. DB 연동 처리
            BoardVO vo = new BoardVO();
            vo.setSeq(Integer.parseInt(seq));

            BoardDAO boardDAO = new BoardDAO();
            boardDAO.deleteBoard(vo);

            //3. 화면 네비게이션
            ModelAndView mav = new ModelAndView();
            mav.setViewName("redirect:getBoardList.do");
            return mav;

    }
}