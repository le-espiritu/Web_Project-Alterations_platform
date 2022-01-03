package multi.webproject.review;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.URLEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import multi.webproject.map.StoreService;
import multi.webproject.map.StoreVO;



@Controller
public class reviewController {
	@Autowired
	reviewService service;
	
	@Autowired
	StoreService storeservice;
	
	
	@RequestMapping(value="/review/insert.do", produces="application/text;charset=utf-8")
	public String insertreview(reviewVO review) {
		int result = service.insertreview(review);
		String url = "";
		//insert가 성공한 경우와 실패한 경우 view를 다르게 넘겨주고 싶다면 insert처리 결과를 이용해서 아래와 같이 작업 
		//System.out.println("@#$%^ 리뷰컨트롤러단의 에서의 출력=>"+review.getStoreName());
		url ="redirect:/shop/shop_detail.do?str_code="+review.getStr_code();
		return url;
		
		
		/*
		 * if(result>=1) { url =
		 * "redirect:/shop/shop_detail.do?name="+review.getStoreName(); }else { url =
		 * "redirect:/board/insertPage.do"; } return url;
		 */
	}
	
	@RequestMapping("/shop/shop_top5.do")
	public ModelAndView top5list(String category) {
		ModelAndView mav = new ModelAndView("shop/shop_top5");
		ArrayList<reviewVO> top5list = (ArrayList<reviewVO>)service.top5list(category);
		
		if(!top5list.isEmpty()) {
			List<StoreVO> topstoreAllinfolist = new ArrayList();
			if(top5list.size()>=5) {
				for(int i=0; i<5; i++){
					 reviewVO topstore = top5list.get(i);
					 String str_code=topstore.getStr_code();
					 StoreVO topStoreAllinfo = storeservice.readBystr_code(str_code);
					 topstoreAllinfolist.add(topStoreAllinfo);
				 }
			}else {
				for(int i=0; i<top5list.size(); i++){
					 reviewVO topstore = top5list.get(i);
					 String str_code=topstore.getStr_code();
					 StoreVO topStoreAllinfo = storeservice.readBystr_code(str_code);
					 topstoreAllinfolist.add(topStoreAllinfo);
				 }
			}
			
			mav.addObject("topstoreAllinfolist", topstoreAllinfolist);
			mav.addObject("category", category);
			return mav;
		}else {
			return mav;
		}
		
	}
	
	
	@RequestMapping("/shop/shop_areatop5.do")
	public ModelAndView areatop5list(reviewVO categoryandarea) {
		ModelAndView mav = new ModelAndView("shop/shop_areatop5");
		ArrayList<reviewVO> areatop5list = (ArrayList<reviewVO>)service.areatop5list(categoryandarea);
		
		if(!areatop5list.isEmpty()) {
			List<StoreVO> topstoreAllinfolist = new ArrayList();
			if(areatop5list.size()>=5) {
				for(int i=0; i<5; i++){
					 reviewVO topstore = areatop5list.get(i);
					 String str_code=topstore.getStr_code();
					 StoreVO topStoreAllinfo = storeservice.readBystr_code(str_code);
					 topstoreAllinfolist.add(topStoreAllinfo);
				 }
			}else {
				for(int i=0; i<areatop5list.size(); i++){
					 reviewVO topstore = areatop5list.get(i);
					 String str_code=topstore.getStr_code();
					 StoreVO topStoreAllinfo = storeservice.readBystr_code(str_code);
					 topstoreAllinfolist.add(topStoreAllinfo);
				 }
			}
			
			mav.addObject("topstoreAllinfolist", topstoreAllinfolist);
			mav.addObject("categoryandarea", categoryandarea);
			return mav;
		}else {
			return mav;
		}
		
	}
	
	
}
	

