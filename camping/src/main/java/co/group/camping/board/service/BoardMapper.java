package co.group.camping.board.service;

import java.util.List;



public interface BoardMapper {
	
	List<BoardVO> boardSelectList(); // 공지사항 게시글 보기
	
	BoardVO boardSelect(BoardVO vo); // 상세보기

	int boardInsert(BoardVO vo); // 입력

	int boardUpdate(BoardVO vo); // 수정

	int boardDelete(BoardVO vo); // 삭제
	
	List<BoardVO> boardSelectQna(); //문의사항 게시글 보기
	
	List<BoardVO> boardSelectReview(); // 구매후기 게시글 보기
	
	int boardHit(BoardVO vo); //조회수 증가 
	
	List<BoardVO> boardSearch(BoardVO vo);
	
	
}
