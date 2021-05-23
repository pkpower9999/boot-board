package kr.co.uk.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Repository;

import kr.co.uk.vo.BoardVO;
import kr.co.uk.vo.PageVO;

@Repository
public interface BoardDao {

	 public List<BoardVO> getBoardList(RowBounds rowBounds);
	 public void insertPost(BoardVO vo);
	 public BoardVO getPost(int seq);
	 public void updatePost(BoardVO vo);
	 public Integer getCount();
	 public void deletePost(BoardVO vo);




}
