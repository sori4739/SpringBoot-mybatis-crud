package com.iu.project.repository;

import com.iu.project.model.User;

public interface UserRepository {
	
	int join(User user);// 회원가입
	User findByUsernameAndPassword(String username, String password);
	void update(int id , String userProfile);

}
