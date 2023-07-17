package com.yodakim.pro1;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {

//	user의 요청에 Board이름의 Controller가 동작한다 (user -> Controller -> Service -> DAO -> MyBatis -> DB)

//	@Auto-wired 또는 @Resource로 연결
	@Resource(name = "boardService")
	private BoardService boardService;

	@GetMapping("/board")
	public String board(Model model) {
//		boardService에서 값 가져오기
		model.addAttribute("list", boardService.boardList());

		return "board";
	}

//	http://localhost:8080/pro1/detail?bno=140
	@GetMapping("/detail")	//	Model은 JSP에 값을 붙이기 위해 선언했습니다.
	public String detail(HttpServletRequest request, Model model) {
		String bno = request.getParameter("bno");
//		System.out.println("bno" + bno);
		BoardDTO dto = boardService.detail(bno);
		model.addAttribute("dto", dto);
		
		return "detail";
	}

}
