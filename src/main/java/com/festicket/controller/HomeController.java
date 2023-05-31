package com.festicket.controller;

<<<<<<< Updated upstream
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
=======
import java.util.List;
>>>>>>> Stashed changes

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.festicket.dao.IDao;
<<<<<<< Updated upstream
import com.festicket.dto.EventDto;
=======
>>>>>>> Stashed changes

@Controller
public class HomeController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "/index")
	public String index(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		model.addAttribute("event", dao.eventListDao());
		
		return "index";
	}
	
	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/join")
	public String join() {
		return "join";
	}
	
	@RequestMapping(value = "/myPage")
	public String myPage() {
		return "myPage";
	}
	
	@RequestMapping(value = "/ranking")
	public String ranking() {
		return "ranking";
	}
	
	@RequestMapping(value = "/exhibition")
	public String exhibition() {
		return "exhibition";
	}
	
	@RequestMapping(value = "/festival")
	public String festival() {
		return "festival";
	}
	
	@RequestMapping(value = "/csBoardList")
	public String csBoardList() {
		return "csBoardList";
	}
	
	@RequestMapping(value = "/csBoardWrite")
	public String csBoardWrite() {
		return "csBoardWrite";
	}
	
	@RequestMapping(value = "/adminList")
<<<<<<< Updated upstream
	public String adminList(HttpSession session, HttpServletRequest request, Model model) {
		
		String sessionId = (String)session.getAttribute("sessionId");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		EventDto eventDto = dao.contentViewDao(request.getParameter("eventNum"));
		
		if(sessionId != null) {
			model.addAttribute("eventDto", eventDto);
		}
=======
	public String adminList(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		model.addAttribute("event", dao.eventListDao());
>>>>>>> Stashed changes
		
		return "adminList";
	}
	
<<<<<<< Updated upstream
	@RequestMapping(value = "/adminModify")
	public String adminModify(HttpSession session, Model model) {
		
		String sessionId = (String)session.getAttribute("sessionId");
		
		
		
		return "adminModify";
=======
	@RequestMapping(value = "/adminEventAdd")
	public String adminEventAdd() {
		return "adminEventAdd";
>>>>>>> Stashed changes
	}
	
	
}
