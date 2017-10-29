package com.springbook.biz.board;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import java.util.List;

/**
 * Created by Namsoo on 2017. 10. 29..
 */
public class BoardServiceClient {



    public static void main(String[] args) {


        //1. Spring 컨테이너를 구동한다
        AbstractApplicationContext container = new GenericXmlApplicationContext("applicationContext.xml");

        //2.
        BoardService boardService = (BoardService) container.getBean("boardService");

        //3. 글 등록 기능 테스트
        BoardVO vo = new BoardVO();
        vo.setTitle("임시 제목");
        vo.setWriter("홍길동");
        vo.setContent("임시 내용....");
        boardService.insertBoard(vo);

        //4. 글 목록 검색 기능 테스트
        List<BoardVO> boardList = boardService.getBoardList(vo);
        for (BoardVO board : boardList) {
            System.out.println("--> " + board.toString());
        }

        //5. spring 컨테이너 종료
        container.close();
    }

}
