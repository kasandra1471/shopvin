package kr.vin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.vin.domain.UserVO;
import kr.vin.mapper.AdminMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class AdminServiceImpl implements AdminService {
	
	
	@Setter(onMethod_ = @Autowired)
	private AdminMapper mapper;
	
		
	@Override
	public boolean modify(UserVO user) {
		// TODO Auto-generated method stub
		
		log.info("수정........" + user);
		
		return mapper.update(user) == 1;
	}
	
	@Override
	public List<UserVO> getUserList() {
		// TODO Auto-generated method stub
		log.info("유저List...................");
		
		return mapper.getUserList();
	
	}

}
