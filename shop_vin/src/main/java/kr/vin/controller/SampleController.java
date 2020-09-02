package kr.vin.controller;

import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/sample/*")
@Controller
public class SampleController {
	
	@GetMapping("/all")
	public void doAll() {
		
		log.info("do all can 접근 모두");
		}
	
	@GetMapping("/member")
	public void domember() {
		
		log.info("로그인 멤버");
		}
	@GetMapping("/admin")
	public void doAdmin() {
		
		log.info("amdin only 어드민");
		}
	
	@PreAuthorize("hasAnyRole('ROLE_ADMIN', 'ROLE_MEMBER)")
	@GetMapping("/annoMember")
	public void doMember2() {
		log.info("logined annotation member");
	}
	
	@Secured({"ROLE_ADMIN"})
	@GetMapping("/annoAdmin")
	public void doAdmin2() {
		log.info("admin annotion only");
	}
	

}
