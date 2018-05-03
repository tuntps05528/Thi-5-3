package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import entity.User;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Transactional
@Controller
@RequestMapping("/user/")
public class UserController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("list")
	public String list(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM User";
		Query query = session.createQuery(hql);
		List<User> list = query.list();
		model.addAttribute("users", list);
		return "user/list";
	}
	@RequestMapping("detail/{id}")
	public String detail(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.getCurrentSession();
		User user = (User) session.get(User.class, id);
		model.addAttribute("user", user);
		return "user/detail";
	}
	
	@RequestMapping("delete/{id}")
	public String delete(ModelMap model, @PathVariable("id") String id) {
		Session session = factory.getCurrentSession();
		User user = (User) session.get(User.class, id);
		session.delete(user);
		return "redirect:/user/list.htm";
	}

@RequestMapping("register")
public String register(ModelMap model) {
	model.addAttribute("user", new User());
	return "user/register";
}
@RequestMapping(value="register", method=RequestMethod.POST)
public String register(ModelMap model, @ModelAttribute("user") User user) {
	Session session = factory.openSession();
	Transaction t = session.beginTransaction();
	try {
		session.save(user);
		t.commit();
		model.addAttribute("message", "Đăng nhập thành công !");
               return "user/login";
	} 
	catch (Exception e) {
		t.rollback();
		model.addAttribute("message", "Sai tên đăng nhập !");
	}
	finally {
		session.close();
	}
	return "user/register";
}
	
	@RequestMapping("login")
	public String login() {
		return "user/login";
	}
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(ModelMap model, 
			@RequestParam("id") String id,
			@RequestParam("password") String password,
			HttpSession httpSession) {
		Session session = factory.getCurrentSession();
		try {
			User user = (User) session.get(User.class, id);
			if(!user.getPassword().equals(password)){
				model.addAttribute("message", "Sai tên mật khẩu !");
			}
			else{
				httpSession.setAttribute("user", user);
				model.addAttribute("message", "Đăng nhập thành công !");
                               return "index"; 
			}
		} 
		catch (Exception e) {
			model.addAttribute("message", "Sai tên đăng nhập !");
		}
		
		return "user/login";
	}

	@RequestMapping("logoff")
	public String logoff(HttpSession httpSession) {
		httpSession.removeAttribute("user");
		return "redirect:/user/login.htm";
	}
	
	@RequestMapping("change")
	public String change() {
		return "user/change";
	}
	@RequestMapping(value="change", method=RequestMethod.POST)
	public String change(ModelMap model, 
			@RequestParam("id") String id, 
			@RequestParam("password") String password, 
			@RequestParam("newpass1") String newpass1, 
			@RequestParam("newpass2") String newpass2) {
		if(!newpass1.equals(newpass2)){
			model.addAttribute("message", "Xác nhận mật khẩu mới không đúng !");
		}
		else{
			Session session = factory.getCurrentSession();
			try {
				User user = (User) session.get(User.class, id);
				if(!user.getPassword().equals(password)){
					model.addAttribute("message", "Sai mật khẩu !");
				}
				else{
					model.addAttribute("message", "Mật khẩu đã được đỏi !");
					user.setPassword(newpass2);
                                        return "user/login";
				}
			} 
			catch (Exception e) {
				model.addAttribute("message", "Sai tên đăng nhập !");
			}
		}
		return "user/change";
	}
}
