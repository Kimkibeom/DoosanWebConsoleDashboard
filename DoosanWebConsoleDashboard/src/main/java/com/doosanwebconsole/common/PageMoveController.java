package com.doosanwebconsole.common;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PageMoveController {
	
	@RequestMapping(value="/PageLink.do")
	public String moveToPage(@RequestParam("link") String linkPage, HttpSession session){
		String link = linkPage;
		
		if(link == null || link.equals("")){
			link = "error/Error";
		}else{
			if(link.indexOf(",") > -1){
				link = link.substring(0, link.indexOf(","));
			}
		}
		
		return link;
	}
}
