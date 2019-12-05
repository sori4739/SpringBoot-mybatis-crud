package com.iu.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iu.project.model.Board;
import com.iu.project.repository.BoardRepository;
import com.iu.project.utils.Script;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	private BoardRepository mRepo;
	
	@GetMapping("/list")
	public String boardList(Model model) {
		List<Board> boards = mRepo.findAll(); 
		model.addAttribute("boards", boards);
		return "list";
	}
	
	@GetMapping("/detail/{id}")
	public String detail(@PathVariable int id , Model model) {
		Board board = mRepo.findById(id);
		model.addAttribute("board", board);
		return "detail";
	}
	
	@PostMapping("/update")
	public @ResponseBody String update(Board board) {
		int result = mRepo.update(board);
		if(result == 1) {
			return Script.href("/board/list");
		}else {
			return Script.back("글 수정 실패");
		}
		
	}
	
	@GetMapping("/updateForm/{id}")
	public String updateForm(@PathVariable int id, Model model) {
		Board board = mRepo.findById(id);
		model.addAttribute("board", board);
		return "updateForm";
	}
	
	@PostMapping("/write")
	public @ResponseBody String write(Board board) {
		System.out.println(board.getUserId());
		int result = mRepo.save(board);
		if(result == 1) {
			return Script.href("/board/list");
		}else {
			return Script.back("글 쓰기 실패");
		}
	}
	
	@GetMapping("/writeForm")
	public String writeForm() {
		return "writeForm";
	}
	
	@GetMapping("/delete/{id}")
	public @ResponseBody String delete(@PathVariable int id) {
		int result = mRepo.delete(id);
		if(result == 1) {
			return Script.href("/board/list");
		}else {
			return Script.back("삭제 실패");
		}
		
	}
	
}
