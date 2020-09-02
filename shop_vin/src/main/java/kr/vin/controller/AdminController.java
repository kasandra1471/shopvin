package kr.vin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.vin.service.AdminService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/admin/*")
@AllArgsConstructor
public class AdminController {
	
	private AdminService service;
	
	@GetMapping("/userList")
	public void getUserList(Model model) {
		log.info("유저리스트");
		model.addAttribute("list", service.getUserList());

	}
	
	

}
