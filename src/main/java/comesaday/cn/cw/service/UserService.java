package comesaday.cn.cw.service;

import java.util.List;

import comesaday.cn.cw.entity.User;

public interface UserService {
	public User login(User user);

	public int queryAll();

	public void addUser(User user);

	public User findById(int id);

	public void update(User user);

	public void del(int id);

	public List<User> queryByPage(int begin, int count);
}
