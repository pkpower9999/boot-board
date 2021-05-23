package kr.co.uk.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.uk.mapper.BoardMapper;
import kr.co.uk.vo.BoardVO;
import kr.co.uk.vo.PageVO;

@Repository
public class BoardDaoImpl implements BoardDao {

	@Autowired
	BoardMapper mapper;
	
	@Override
	public List<BoardVO> getBoardList(RowBounds rowBounds) {
		// TODO Auto-generated method stub
		return mapper.getBoardList(rowBounds);
	}
	@Override
	public void insertPost(BoardVO vo) {
		// TODO Auto-generated method stub
			mapper.insertPost(vo);
	}
	@Override
	public BoardVO getPost(int seq) {
		// TODO Auto-generated method stub
		return mapper.getPost(seq);
	}
	@Override
	public void updatePost(BoardVO vo) {
		// TODO Auto-generated method stub
		mapper.updatePost(vo);
	}

	@Override
	public Integer getCount() {
		// TODO Auto-generated method stub
		return mapper.getCount();
	}
	@Override
	public void deletePost(BoardVO vo) {
		// TODO Auto-generated method stub
		mapper.deletePost(vo);
	}
}
