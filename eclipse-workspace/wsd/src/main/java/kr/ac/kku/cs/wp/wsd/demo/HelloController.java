package kr.ac.kku.cs.wp.wsd.demo;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	private static final Logger logger = LogManager.getLogger(HelloController.class);

	@RequestMapping("/hello")
	public ModelAndView hello(@RequestParam(name = "name", required = true) String name) {

		final String formattedGreeting = "hello%s";
		String greeting = formattedGreeting.formatted(name);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("hello", greeting);
		mav.setViewName("HelloView");
		
		return mav;
	}

}