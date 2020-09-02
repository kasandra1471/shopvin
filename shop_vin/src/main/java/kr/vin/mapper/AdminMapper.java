package kr.vin.mapper;

import java.util.List;

import kr.vin.domain.UserVO;

public interface AdminMapper {

	public List<UserVO> getUserList();

	int update(UserVO user);

}
