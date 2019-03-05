package comesaday.cn.cw.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import comesaday.cn.cw.entity.User;
import comesaday.cn.cw.mapper.UserMapper;
import comesaday.cn.cw.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return userMapper.login(user);
	}

	@Override
	public int queryAll() {
		// TODO Auto-generated method stub
		return userMapper.queryAll();
	}

	@Override
	public void addUser(User user) {
		// TODO Auto-generated method stub
		userMapper.addUser(user);
	}

	@Override
	public User findById(int id) {
		// TODO Auto-generated method stub
		return userMapper.findById(id);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		userMapper.update(user);
	}

	@Override
	public void del(int id) {
		// TODO Auto-generated method stub
		userMapper.del(id);
	}

	@Override
	public List<User> queryByPage(int begin, int count) {
		// TODO Auto-generated method stub
		return userMapper.queryByPage(begin,count);
	}

}
