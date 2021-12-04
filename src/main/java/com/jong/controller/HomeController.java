package com.jong.controller;

import java.net.URISyntaxException;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.jong.model.TestFormData;
import com.jong.model.TestFormData2List;
import com.jong.model.TestFormData2;
import com.jong.service.MultipartFileSender;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/ajaxHome", method = RequestMethod.GET)
	public String ajaxHome() {
		return "ajaxHome";
	}
	
	@RequestMapping(value = "/",method =RequestMethod.GET)
	public String home(Model model) {
		List<String> dummyList=new ArrayList<String>();
		dummyList.add("t1");
		dummyList.add("t2");
		dummyList.add("t3");
		model.addAttribute("dummyList", dummyList);
		return "home";
	}
	
	//JWT+SECURITY 셋팅만 다 해놓면, 컨트롤러에 @PreAuthorize("hasAnyRole('MYCUSTOMROLE')")
	//이것만 적어주면 지가 다 알아서 함
	//@PreAuthorize("hasAnyRole('ROLE_MEMBER')")
	//@ResponseBody
	@RequestMapping(value = "/t1",method =RequestMethod.GET,produces = "application/json")
	public void t1(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MultipartFileSender.fromPath(Paths.get("H:/crawled/a choo/Lovelyz 러블리즈 AhChoo Lyrics.mp4"))
        .with(request)
        .with(response)
    .serveResource();
	}
	
	@RequestMapping(value = "/test_formdata", method = RequestMethod.GET)
	public String test(HttpServletRequest request, Model model) throws URISyntaxException {
		return "test_formdata";
	}
	
	@RequestMapping(value = "/test_formdata", method = RequestMethod.POST)
	@ResponseBody
	public String testpost(TestFormData testFromData,HttpServletRequest request, Model model) throws URISyntaxException, JsonMappingException, JsonProcessingException {
		Enumeration params = request.getParameterNames();
		System.out.println("----------------------------");
		while (params.hasMoreElements()){
		    String name = (String)params.nextElement();
		    System.out.println(name + " : " +request.getParameter(name).toString());
		}
		System.out.println("----------------------------");
		System.out.println("## testFromData: "+testFromData.toString());
		return "test_formdata";
	}
	
	@RequestMapping(value = "/test_formdata2", method = RequestMethod.POST)
	@ResponseBody
	public String testpost2(TestFormData2List testFromDataList,HttpServletRequest request, Model model) throws URISyntaxException, JsonMappingException, JsonProcessingException {
		Enumeration params = request.getParameterNames();
		System.out.println("----------------------------");
		while (params.hasMoreElements()){
		    String name = (String)params.nextElement();
		    System.out.println(name + " : " +request.getParameter(name).toString());
		}
		System.out.println("----------------------------");
		System.out.println("## testFromDataList: "+testFromDataList.toString());
		return "test_formdata";
	}

}