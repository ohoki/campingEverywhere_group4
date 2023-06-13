package co.group.camping.board.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO {

	private int boardId; // 게시글 번호
	private String boardKate; // 카테고리
	private String boardTitle; // 게시글 제목
	private String boardSubject; // 게시글 내용
	private String boardImg; // 게시글 이미지
	private String memberId; // 작성자 ID
	private Date boardWdate; // 게시글 작성일
	private int boardHit; // 게시글 조회수
}
