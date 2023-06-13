package co.group.camping.board.service;

import java.util.List;

public interface BoardService {
	List<BoardVO> boardSelectList(); // 전체조회

	BoardVO boardSelect(BoardVO vo); // 단건조회

	int boardInsert(BoardVO vo); // 입력

	int boardUpdate(BoardVO vo); // 수정

	int boardDelete(BoardVO vo); // 삭제
}
