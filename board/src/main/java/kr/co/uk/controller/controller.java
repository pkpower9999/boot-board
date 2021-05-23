package kr.co.uk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.uk.service.BoardService;
import kr.co.uk.vo.BoardVO;
import kr.co.uk.vo.PageVO;

@Controller
public class controller {
	
	@Autowired
	BoardService service;

	@GetMapping("/list")
	public String getList(@RequestParam(value="page", defaultValue="1") int page,
						  Model model) {
		
		List<BoardVO> list = service.getBoardList(page); 
		model.addAttribute("list", list);
		
		PageVO pageVO = service.getCount(page);
		model.addAttribute("pageVO", pageVO);
		
		return "list";
	}
	
	@GetMapping("/write")
	public String getWrite(@ModelAttribute("boardVO") BoardVO boardVO) {
			
		return "write";
	}
	
	@PostMapping("/write_pro")
	public String write_pro(@ModelAttribute("boardVO") BoardVO boardVO) {
		service.insertPost(boardVO);
		
		return "write_success";
	}
	
	@GetMapping("/view")
	public String getView(@ModelAttribute("boardVO") BoardVO boardVO,
						  @RequestParam int seq,
						  Model model) {
		BoardVO post = service.getPost(seq);
		model.addAttribute("post", post);
		
		return "view";
	}
	
	@GetMapping("/modify")
	public String getModify(@ModelAttribute("boardVO") BoardVO boardVO,
							@RequestParam int seq, Model model) {
		
		BoardVO modifyBoard = service.getPost(seq);
		model.addAttribute("modifyBoard", modifyBoard);
		
		return "modify";
	}
	
	@PostMapping("/modify_pro")
	public String modify_pro(@ModelAttribute("boardVO") BoardVO boardVO) {
		
		service.updatePost(boardVO);
		
		
		return "modify_success";
	}
	
	@PostMapping("delete_pro")
	public String delete_pro(@ModelAttribute("boardVO") BoardVO boardVO) {
		service.deletePost(boardVO);
		return "delete_success";		
	}
	
	
}
