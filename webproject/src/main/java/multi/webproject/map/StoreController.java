package multi.webproject.map;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import multi.webproject.review.reviewService;
import multi.webproject.review.reviewVO;



@Controller
public class StoreController {
	@Autowired
	StoreService service;
	
	@Autowired
	reviewService reviewservice;
	
	@RequestMapping("/map/area_list.do")
	public ModelAndView boardlist(String area) {
		ModelAndView mav = new ModelAndView("map/area_list");
		List<StoreVO> storelist = service.findByArea(area);
		//dao에서 결과가 넘어노는 경우 디버깅 작업은 엄어노는 데이터를 sysout으로 컨트롤러 단까지 모두 출력해보기
		//System.out.println(storelist);
		mav.addObject("storelist",storelist);
		mav.addObject("area",area);
		return mav;
	}
	
	
	//샵 디테일보기 컨트롤러
	@RequestMapping("/shop/shop_detail.do")
	public ModelAndView StoreDetailList(String str_code) {
		
		int result = reviewservice.fakeInsert(str_code);
		ModelAndView mav = new ModelAndView("shop/shop_detail");
		List<StoreVO> detaillist = service.findDetailbystr_code(str_code);
		List<reviewVO> reviewlist = reviewservice.reviewlist(str_code);
		int avgscore = reviewservice.selectavgscore(str_code);
		System.out.println(avgscore+"$$$$$$$$$$$$$$$$$$$");
		mav.addObject("detaillist",detaillist);
		mav.addObject("reviewlist",reviewlist);
		mav.addObject("avgscore",avgscore);
		return mav;
	}
	
}
	

