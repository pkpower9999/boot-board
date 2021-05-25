package kr.co.uk.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.uk.vo.BoardVO;
import kr.co.uk.vo.Criteria;
import kr.co.uk.vo.PageVO;
import kr.co.uk.vo.SearchCriteria;

@Service
public interface BoardService {
	 public List<BoardVO> listPage(Criteria cri);
	 public int listCount();

	 public List<BoardVO> getBoardList(int page);
	 public void insertPost(BoardVO vo);
	 public BoardVO getPost(int seq);
	 public void updatePost(BoardVO vo);
	 public PageVO getCount(int currentPage);
	 public void deletePost(int seq);
	 public Integer getPassword(int seq, String password);
	 public List<BoardVO> listSearch(SearchCriteria scri);
	 public int countSearch(SearchCriteria scri);
}
