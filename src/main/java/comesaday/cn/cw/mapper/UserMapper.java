package comesaday.cn.cw.mapper;

import java.util.List;

import comesaday.cn.cw.entity.User;

public interface UserMapper {
	
   public User login(User user);

   public int queryAll();

   public void addUser(User user);

   public User findById(int id);

   public void update(User user);

   public void del(int id);

   public List<User> queryByPage(int begin, int count);

}