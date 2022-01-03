package main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import multi.webproject.map.StoreService;

@Controller
public class IndexController {
	@Autowired
	StoreService service;
	
//	@RequestMapping(value="/map/search.do",method = RequestMethod.GET,
//			produces = "application/json;charset=utf-8")
//	public @ResponseBody ArrayList<StoreVO> allStoreList() {
//		ModelAndView mav = new ModelAndView("map/search");
//		ArrayList<StoreVO> allStoreList = (ArrayList<StoreVO>)service.allStoreList();
//		return allStoreList;
//	}
	
//	@RequestMapping("/map/search.do")
//	public  ModelAndView allStoreList() {
//		ModelAndView mav = new ModelAndView("map/search");
//		List<StoreVO> allStoreList = service.allStoreList();
//		mav.addObject("allStoreList", allStoreList);
//		return mav;
//	}
	
	@RequestMapping("/map/search.do") // 브라우저 주소창에 직접 입력한 값에서 넘어옴
	public String search() {
		return "map/search"; //tiles 설정 파일에 등록된 view의 이름
	}
	
	
	@RequestMapping("/index2.do") // 브라우저 주소창에 직접 입력한 값에서 넘어옴
	public String index2() {
		return "mainpage"; //tiles 설정 파일에 등록된 view의 이름
	}
	
	
	
	@RequestMapping("/menu/login.do") // 브라우저 주소창에 직접 입력한 값에서 넘어옴
	public String login() {
		return "menu/login"; //tiles 설정 파일에 등록된 view의 이름
	}
	
	
}