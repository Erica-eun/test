package com.spring.shop.item.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/item")
public class ItemController {
	//이번 프로젝트는..
	//-> servlet-context.xml 파일에서 타일즈 설정해줌
	//-> src/main/resources 패키지에 tiles-config.xml 파일 넣어줌
	
	//따라서..
	//앞으로 메소드 작성하고 페이지 이동 관련된 리턴값 작성할 때
	//tiles-config.xml 파일에서 필요로 하는 값(컨텐츠 부분 주소)을 작성해주면 됨!!
	
	//첫 화면으로 이동
	@GetMapping("/itemList")
	public String selectItemList() {
		return "item/item_list";
	}
	
}
