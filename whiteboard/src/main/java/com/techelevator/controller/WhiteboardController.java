package com.techelevator.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.techelevator.authentication.AuthProvider;
import com.techelevator.problem.model.Problem;
import com.techelevator.problem.model.ProblemDao;
import com.techelevator.user.model.User;
import com.techelevator.user.model.UserDao;

@Controller 
public class WhiteboardController {


@Autowired
private AuthProvider auth;
@Autowired
private ProblemDao problemDao;

@RequestMapping(path="/about", method=RequestMethod.GET)
public String showAboutPage() {
	return "about";
}
	
@RequestMapping(method=RequestMethod.GET, path={"/", "/landing"})
public String index(ModelMap modelHolder) {
    modelHolder.put("user", auth.getCurrentUser());

    return "landing";
	}

@RequestMapping(path="/login", method=RequestMethod.GET)
public String login(ModelMap modelHolder) {
    return "login";
	}

@RequestMapping(path="/login", method=RequestMethod.POST)
public String login(
    @RequestParam String username,
    @RequestParam String password,
    RedirectAttributes flash
		) {
    if(auth.signIn(username, password)) {
        return "redirect:/homepage";
    } else {
        flash.addFlashAttribute("message", "Login Invalid");
        return "redirect:/login";
    }
	}
@RequestMapping(path="/register", method=RequestMethod.GET)
public String register(ModelMap modelHolder) {
    if( ! modelHolder.containsAttribute("user")){
        modelHolder.put("user", new User());
    }
    return "register";
	}

@RequestMapping(path="/register", method=RequestMethod.POST)
public String register(
    @Valid @ModelAttribute("user") User user,
    BindingResult result,
    RedirectAttributes flash
		) {
    if(result.hasErrors()) {
        flash.addFlashAttribute("user", user);
        flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "user", result);
        flash.addFlashAttribute("message", "Please fix the following errors:");
         return "redirect:/register";
    }
    auth.register(user.getUsername(), user.getPassword(), user.getRole());
    return "redirect:/";
	}

	@RequestMapping(path="/logoff", method=RequestMethod.POST)
	public String logOff() {
    auth.logOff();
    return "redirect:/";
	}
	
	@RequestMapping(path="/homepage", method=RequestMethod.GET)
	public String showHomePage() {
		return "homepage";
	}
	@RequestMapping(path="/easy", method=RequestMethod.POST)
	public String showEasyProblem(ModelMap modelHolder) {
		int randomId=0;
		modelHolder.addAttribute("easy", problemDao.randomEasyProblems(randomId));
		return "easy";
	} 
	
	@RequestMapping("/easy")
	public String showEasyPage() {
		return "easy";
	}
	}

