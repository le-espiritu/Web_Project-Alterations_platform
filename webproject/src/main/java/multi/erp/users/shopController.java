package multi.erp.users;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class shopController {
	 @Autowired
	shopService service;
	
	@RequestMapping("/menu/shop_join.do")
		public String insert(shopVO shop) {
			System.out.println("========"+shop);
			service.insert(shop);
			return "redirect:/menu/shop_login.do";
		}
	@RequestMapping(value = "/menu/shop_mypage.do")
	public String mypage() throws Exception{
		return "/menu/shop_mypage";
	}
	
	@RequestMapping(value="/menu/shop_login.do",method=RequestMethod.POST)
	public ModelAndView login(shopVO loginShopInfo, HttpServletRequest request) {
		System.out.println(loginShopInfo);
		ModelAndView mav = new ModelAndView();
		shopVO loginOkShop = service.login(loginShopInfo);
		String viewName = "";
		if(loginOkShop!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("loginShop", loginOkShop);
			viewName = "login/shop";
		}else {
			viewName = "login";
		}
		mav.setViewName(viewName);
		mav.addObject("loginOkShop",loginOkShop);
		System.out.println("DB연동완료 : "+loginOkShop);
		return mav;
	}
}
