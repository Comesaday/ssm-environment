package comesaday.cn.cw.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import comesaday.cn.cw.entity.QueryVO;
import comesaday.cn.cw.entity.User;
import comesaday.cn.cw.service.UserService;
import comesaday.cn.cw.utils.PageBean;

@Controller
@RequestMapping(value = "/user/")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "login.action")
	public String login(QueryVO<User> vo,HttpSession session) {
		
		User user2 = userService.login(vo.getUser());
		if (user2 != null) {
			session.setAttribute("user", user2);
			return "redirect:/user/admin.action";
		} else {
			return "login";
		}
	}
	
	@RequestMapping(value = "admin.action")
	public String admin() {
		
		return "index";
	}
	
	@RequestMapping(value = "add.action")
	public String add() {
		return "add";
	}
	
	@RequestMapping(value = "addUser.action")
	public String addUser(QueryVO<User> vo) {
		userService.addUser(vo.getUser());
		//return "forward:/user/view.action";内部转发：链接地址不变
		return "redirect:/user/view.action?currentPage=1";
	}
	
	@RequestMapping(value = "view.action")
	public String view(Model model , int currentPage) {
		int totalCount = userService.queryAll();
		PageBean<User> page = new PageBean<User>();
		page.setTotalCount(totalCount);
		page.setCurrentPage(currentPage);
		List<User> pageUsers = userService.queryByPage(page.getBeginCount(),page.getPageSize());
		page.setList(pageUsers);
		
		model.addAttribute("page", page);
		
		return "view";
	}
	
	@RequestMapping(value = "main.action")
	public String main() {
		return "main";
	}
	
	@RequestMapping(value = "updatePage.action")
	public String updatePage(Model model , int id , int currentPage) {
		User user = userService.findById(id);
		model.addAttribute("user", user);
		model.addAttribute("currentPage", currentPage);
		return "update";
	}
	
	@RequestMapping(value = "update.action")
	public String update(QueryVO<User> vo , int currentPage) {
		userService.update(vo.getUser());
		String url = "redirect:/user/view.action?currentPage=" + currentPage;
		return url;
	}
	
	@RequestMapping(value = "del.action")
	public String del(int id , int currentPage) {
		userService.del(id);
		String url = "redirect:/user/view.action?currentPage=" + currentPage;
		return url;
	}
}
