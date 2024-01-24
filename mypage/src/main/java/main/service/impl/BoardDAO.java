package main.service.impl;

import java.util.List;

import org.egovframe.rte.psl.dataaccess.EgovAbstractDAO;
import org.springframework.stereotype.Repository;

import main.service.BoardVO;
@Repository("boardDAO")
public class BoardDAO extends EgovAbstractDAO{

	public String insertBoardWrite(BoardVO vo) {
		return (String) insert("boardDAO.insertBoardWrite", vo);
	}

	public List<?> selectBoardList(BoardVO vo) {
		return list("boardDAO.selectBoardList", vo);
	}

	public int selectBoardTotal(BoardVO vo) {
		return (int) select("boardDAO.selectBoardTotal", vo);
	}

	public BoardVO selectBoardDetail(int unq) {
		return (BoardVO) select("boardDAO.selectBoardDetail", unq);
	}

	public int updateBoardHits(int unq) {
		return update("boardDAO.updateBoardHits", unq);
	}

	public BoardVO selectModifyBoard(int unq) {
		return (BoardVO) select("boardDAO.selectModifyBoard", unq);
	}

	public int updateModifyBoard(BoardVO vo) {
		return update("boardDAO.updateModifyBoard", vo);
	}

	public int deleteboard(BoardVO vo) {
		return delete("boardDAO.deleteBoard", vo);
	}

}
