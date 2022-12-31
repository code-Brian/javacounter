package com.briandenmark;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CounterController {
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping("/counter")
	public String counter(HttpSession session, Model model) {
		if(session.getAttribute("count") == null) {
			session.setAttribute("count", 0);
			model.addAttribute("pageVisitedCount", session.getAttribute("count"));
		} else {
			Integer pageVisitedCount = (Integer) session.getAttribute("count");
			pageVisitedCount += 1;
			session.setAttribute("count", pageVisitedCount);
			System.out.println("Visits counted: " + pageVisitedCount);
			model.addAttribute("pageVisitedCount", pageVisitedCount);
		}
		return "counter.jsp";
	}
}
	