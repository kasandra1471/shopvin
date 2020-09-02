package kr.vin.service;

import java.util.List;

import kr.vin.domain.UserVO;

public interface AdminService {

	public List<UserVO> getUserList(); 
	
	public boolean modify(UserVO board);
	

}
