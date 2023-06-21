package co.group.camping.board.service;

import java.util.List;


public interface BoardService {
	
	List<BoardVO> boardAll(BoardVO vo); //모든 게시글 보기 + 페이징 처리
	
	List<BoardVO> boardSelectList(BoardVO vo); // 공지사항 게시글 보기 + 페이징 처리

	BoardVO boardSelect(BoardVO vo); // 상세보기

	int boardInsert(BoardVO vo); // 입력

	int boardUpdate(BoardVO vo); // 수정

	int boardDelete(BoardVO vo); // 삭제
	
	List<BoardVO> boardSelectQna(BoardVO vo); // 문의사항 게시글 보기
	
	List<BoardVO> boardSelectReview(); // 구매후기 게시글 보기
	
	int boardHit(BoardVO vo); //조회수 증가
	
	List<BoardVO> boardSearch(BoardVO vo); // 검색된 게시글 보기 
	
	int listPage();
	
}
