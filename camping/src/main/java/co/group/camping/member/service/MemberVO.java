package co.group.camping.member.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberAuth;
	private String memberAddr;
	private String memberTel;
}
