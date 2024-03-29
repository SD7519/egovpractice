package main.service;

public interface MemberService {
	
	public String registerWrite(MemberVO vo) throws Exception;
	public MemberVO loginMember(MemberVO vo) throws Exception;
	public MemberVO selectMemberDetail(String userid) throws Exception;
	public int modifyPass(MemberVO vo) throws Exception;
	public String modifyPassSave(MemberVO vo) throws Exception;
	public int updateMember(MemberVO vo) throws Exception;
	public int deleteMember(MemberVO vo) throws Exception;
	public int checkId(String userid) throws Exception;
}
