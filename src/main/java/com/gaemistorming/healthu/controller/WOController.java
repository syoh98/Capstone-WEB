package com.gaemistorming.healthu.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gaemistorming.healthu.exception.NotFoundException;
import com.gaemistorming.healthu.model.Authority;
import com.gaemistorming.healthu.model.Characters;
import com.gaemistorming.healthu.model.DayWorkOut;
import com.gaemistorming.healthu.model.Users;
import com.gaemistorming.healthu.service.AuthorityService;
import com.gaemistorming.healthu.service.CharacterService;
import com.gaemistorming.healthu.service.DayWOService;
import com.gaemistorming.healthu.service.UserService;

@Controller
public class WOController {

	@Autowired
	private UserService userService;
	@Autowired
	private AuthorityService authorityService;
	@Autowired
	private CharacterService characterService;
	@Autowired
	private DayWOService dayWOService;

	@RequestMapping("/home")
	public String showHome(Model model) {
//		List<Offer> offers = offerService.getCurrent();
//		model.addAttribute("offers",offers);

		List<Users> users = userService.getAllUsers();
		model.addAttribute("user", users);
		
		return "home";
	}

	@RequestMapping("/about")
	public String showAbout(Model model) {

		return "about";
	}

	@RequestMapping("/workout")
	public String showExercise(Model model) {

		return "workout";
	}

	@RequestMapping("/choice")
	public String showChoice(Model model) {

		return "choice";
	}

	@RequestMapping("/pt")
	public String showPersonal(Model model) {

		return "pt";
	}

	@RequestMapping("/mypage")
	public String showMypage(Model model) {

		Object current_user = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = ((User) current_user).getUsername();
		Long user_id = Long.parseLong(username);
		Users user = userService.getUserById(user_id);
		model.addAttribute("user", user);
//		DayWorkOut dayWO = dayWOService.getDayWOById(user_id);
//		model.addAttribute("dayWO", dayWO);

		return "mypage";
	}

	@RequestMapping("/shop")
	public String showShop(Model model) {

		System.out.println("hello");

		Object current_user = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = ((User) current_user).getUsername();
		Long user_id = Long.parseLong(username);
		Users user = userService.getUserById(user_id);
		model.addAttribute("user", user); // shop에서 자신이 가진 돈 ${user.point}로 쓰임
		
		Characters cheeseAeong = characterService.getCharacterById("1");
		model.addAttribute("cheeseAeong", cheeseAeong);
		Characters blackAeong = characterService.getCharacterById("2");
		model.addAttribute("blackAeong", blackAeong);
		Characters banana = characterService.getCharacterById("3");
		model.addAttribute("banana", banana);
		Characters cookies = characterService.getCharacterById("4");
		model.addAttribute("cookies", cookies);
		Characters woody = characterService.getCharacterById("5");
		model.addAttribute("woody", woody);
		Characters gongdaesang = characterService.getCharacterById("6");
		model.addAttribute("gongdaesang", gongdaesang);
		Characters haribo = characterService.getCharacterById("7");
		model.addAttribute("haribo", haribo);
		Characters military = characterService.getCharacterById("8");
		model.addAttribute("military", military);
		Characters boogi = characterService.getCharacterById("9");
		model.addAttribute("boogi", boogi);
		Characters sue = characterService.getCharacterById("10");
		model.addAttribute("sue", sue);
		Characters hanbok = characterService.getCharacterById("11");
		model.addAttribute("hanbok", hanbok);
		Characters dftChar = characterService.getCharacterById("12");
		model.addAttribute("dftChar", dftChar);
		Characters rapunzel = characterService.getCharacterById("13");
		model.addAttribute("rapunzel", rapunzel);

		//model.addAttribute("user_update", user);
		
		return "shop";
	}

	@RequestMapping("/settings")
	public String showSettings(Model model) {

		Object current_user = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = ((User) current_user).getUsername();
		Long user_id = Long.parseLong(username);
		Users user = userService.getUserById(user_id);
		model.addAttribute("user", user);
		
		return "settings";
	}

	@RequestMapping("/signin")
	public String showSignin(@RequestParam(value = "error", required = false) String error, Model model) {

		if (error != null) {
			model.addAttribute("errorMsg", "Invalid username and password");
		}
		return "signin";
	}

	@RequestMapping("/login")
	public String showLogin(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {

		if (error != null) {
			model.addAttribute("errorMsg", "Invalid username and password");
		}
		
		if (logout != null) {
			model.addAttribute("logoutMsg", "You have been logged out successfully");
		}
		
		return "login";
	}

	@RequestMapping("/signup")
	public String showSignup(Model model) {

		model.addAttribute("user", new Users()); // signup에서 받아옴
		//model.addAttribute("authority", new Authority());
		
		return "signup";
	}

//	@RequestMapping("/thanksToSignup")
//	public String showThanksToSignup(Model model) {
//
//		model.addAttribute("user_auth", new Authority());
//		Object current_user = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
//		String username = ((User) current_user).getUsername();
//		Long user_id = Long.parseLong(username);
//		Users user = userService.getUserById(user_id);
//		model.addAttribute("user", user); // shop에서 자신이 가진 돈 ${user.point}로 쓰임
//
//		//model.addAttribute("authority", new Authority());
//		
//		return "thanksToSignup";
//	}
//    
//    @RequestMapping("/finishSignup")
//	public String finishSignup(Model model, @Valid Authority authority, BindingResult result) {
//		
//		if(result.hasErrors()) {
//			System.out.println("==Form data does not validated ==");
//			
//			List<ObjectError> errors=result.getAllErrors();
//			
//			for(ObjectError error:errors) {
//				System.out.println(error.getDefaultMessage());
//			}
//			
//			return "signup";
//		}
//		
//		//userService.insert(user);
//		authorityService.insert(authority);
//		
//		return "login";
//	}
	
	@RequestMapping("/usercreated")
	public String showUsercreated(Model model) {

		// model.addAttribute("authority", new Authority());
		return "usercreated";
	}
    
    @RequestMapping("/docreate")
	public String doCreate(Model model, @Valid Users user, BindingResult result) {
		
		if(result.hasErrors()) {
			System.out.println("==Form data does not validated ==");
			
			List<ObjectError> errors=result.getAllErrors();
			
			for(ObjectError error:errors) {
				System.out.println(error.getDefaultMessage());
			}
			
			return "signup";
		}
		
		userService.insert(user);
		//authorityService.insert(authority);
		
		return "home";
	}
    
    @RequestMapping("/updateUser")
	public String updateUser(Model model, @Valid Users user, BindingResult result) {
		
		if(result.hasErrors()) {
			System.out.println("==Form data does not validated ==");
			
			List<ObjectError> errors=result.getAllErrors();
			
			for(ObjectError error:errors) {
				System.out.println(error.getDefaultMessage());
			}
			
			return "settings";
		}
		
		userService.update(user);
		//authorityService.insert(authority);
		
		return "redirect:mypage";
	}
    
    @RequestMapping("/saveTotalTime")
	public String saveTotalTime(Model model, @Valid Users user, BindingResult result) {
		
		userService.update(user);
		
		return "home";
	}

//////////////////////////////////////////////캐릭터 살 때///////////////////////////////////////////////////////
    @RequestMapping("/buyCheese")
	public String buyCheese(Model model, @Valid Users user, Characters character, BindingResult result) {
		
    	model.addAttribute("user", user);
    	
		userService.update(user);
		
		final Users user1 = userService.getUserById(user.getId());
        if( user1 == null)
        	throw  new NotFoundException(user.getId());
        
        final Characters character1 = characterService.getCharacterById("1");
        if( character1 == null)
        	throw  new NotFoundException(user.getId());
        
//        userCharsService.insert(userChars);
		
//        characterService.addToUser(character1, user1);
		
		return "redirect:shop";
	}

    @RequestMapping("/buyBlack")
	public String buyBlack(Model model, @Valid Users user, Characters character, BindingResult result) {
		
    	model.addAttribute("user", user);
    	
		userService.update(user);
		
		final Users user1 = userService.getUserById(user.getId());
        if( user1 == null)
        	throw  new NotFoundException(user.getId());
        
        final Characters character1 = characterService.getCharacterById("2");
        if( character1 == null)
        	throw  new NotFoundException(user.getId());
        
        characterService.addToUser(character1, user1);
		
		return "redirect:shop";
	}

    @RequestMapping("/buyBanana")
	public String buyBanana(Model model, @Valid Users user, Characters character, BindingResult result) {
		
    	model.addAttribute("user", user);
    	
		userService.update(user);
		
		final Users user1 = userService.getUserById(user.getId());
        if( user1 == null)
        	throw  new NotFoundException(user.getId());
        
        final Characters character1 = characterService.getCharacterById("3");
        if( character1 == null)
        	throw  new NotFoundException(user.getId());
        
        characterService.addToUser(character1, user1);
		
		return "redirect:shop";
	}

    @RequestMapping("/buyCookies")
	public String buyCookies(Model model, @Valid Users user, Characters character, BindingResult result) {
		
    	model.addAttribute("user", user);
    	
		userService.update(user);
		
		final Users user1 = userService.getUserById(user.getId());
        if( user1 == null)
        	throw  new NotFoundException(user.getId());
        
        final Characters character1 = characterService.getCharacterById("4");
        if( character1 == null)
        	throw  new NotFoundException(user.getId());
        
        characterService.addToUser(character1, user1);
		
		return "redirect:shop";
	}

    @RequestMapping("/buyWoody")
	public String buyWoody(Model model, @Valid Users user, Characters character, BindingResult result) {
		
    	model.addAttribute("user", user);
    	
		userService.update(user);
		
		final Users user1 = userService.getUserById(user.getId());
        if( user1 == null)
        	throw  new NotFoundException(user.getId());
        
        final Characters character1 = characterService.getCharacterById("5");
        if( character1 == null)
        	throw  new NotFoundException(user.getId());
        
        characterService.addToUser(character1, user1);
		
		return "redirect:shop";
	}

    @RequestMapping("/buyGongdaesang")
	public String buyGongdaesang(Model model, @Valid Users user, Characters character, BindingResult result) {
		
    	model.addAttribute("user", user);
    	
		userService.update(user);
		
		final Users user1 = userService.getUserById(user.getId());
        if( user1 == null)
        	throw  new NotFoundException(user.getId());
        
        final Characters character1 = characterService.getCharacterById("6");
        if( character1 == null)
        	throw  new NotFoundException(user.getId());
        
        characterService.addToUser(character1, user1);
		
		return "redirect:shop";
	}

    @RequestMapping("/buyHaribo")
	public String buyHaribo(Model model, @Valid Users user, Characters character, BindingResult result) {
		
    	model.addAttribute("user", user);
    	
		userService.update(user);
		
		final Users user1 = userService.getUserById(user.getId());
        if( user1 == null)
        	throw  new NotFoundException(user.getId());
        
        final Characters character1 = characterService.getCharacterById("7");
        if( character1 == null)
        	throw  new NotFoundException(user.getId());
        
        characterService.addToUser(character1, user1);
		
		return "redirect:shop";
	}

    @RequestMapping("/buyMilitary")
	public String buyMilitary(Model model, @Valid Users user, Characters character, BindingResult result) {
		
    	model.addAttribute("user", user);
    	
		userService.update(user);
		
		final Users user1 = userService.getUserById(user.getId());
        if( user1 == null)
        	throw  new NotFoundException(user.getId());
        
        final Characters character1 = characterService.getCharacterById("8");
        if( character1 == null)
        	throw  new NotFoundException(user.getId());
        
        characterService.addToUser(character1, user1);
		
		return "redirect:shop";
	}

    @RequestMapping("/buyBoogi")
	public String buyBoogi(Model model, @Valid Users user, Characters character, BindingResult result) {
		
    	model.addAttribute("user", user);
    	
		userService.update(user);
		
		final Users user1 = userService.getUserById(user.getId());
        if( user1 == null)
        	throw  new NotFoundException(user.getId());
        
        final Characters character1 = characterService.getCharacterById("9");
        if( character1 == null)
        	throw  new NotFoundException(user.getId());
        
        characterService.addToUser(character1, user1);
		
		return "redirect:shop";
	}

    @RequestMapping("/buySue")
	public String buySue(Model model, @Valid Users user, Characters character, BindingResult result) {
		
    	model.addAttribute("user", user);
    	
		userService.update(user);
		
		final Users user1 = userService.getUserById(user.getId());
        if( user1 == null)
        	throw  new NotFoundException(user.getId());
        
        final Characters character1 = characterService.getCharacterById("10");
        if( character1 == null)
        	throw  new NotFoundException(user.getId());
        
        characterService.addToUser(character1, user1);
		
		return "redirect:shop";
	}

    @RequestMapping("/buyHanbok")
	public String buy11(Model model, @Valid Users user, Characters character, BindingResult result) {
		
    	model.addAttribute("user", user);
    	
		userService.update(user);
		
		final Users user1 = userService.getUserById(user.getId());
        if( user1 == null)
        	throw  new NotFoundException(user.getId());
        
        final Characters character1 = characterService.getCharacterById("11");
        if( character1 == null)
        	throw  new NotFoundException(user.getId());
        
        characterService.addToUser(character1, user1);
		
		return "redirect:shop";
	}

    @RequestMapping("/buyDftChar")
	public String buyDftChar(Model model, @Valid Users user, Characters character, BindingResult result) {
		
    	model.addAttribute("user", user);
    	
		userService.update(user);
		
		final Users user1 = userService.getUserById(user.getId());
        if( user1 == null)
        	throw  new NotFoundException(user.getId());
        
        final Characters character1 = characterService.getCharacterById("12");
        if( character1 == null)
        	throw  new NotFoundException(user.getId());
        
        characterService.addToUser(character1, user1);
		
		return "redirect:shop";
	}

    @RequestMapping("/buyRapunzel")
	public String buyRapunzel(Model model, @Valid Users user, Characters character, BindingResult result) {
		
    	model.addAttribute("user", user);
    	
		userService.update(user);
		
		final Users user1 = userService.getUserById(user.getId());
        if( user1 == null)
        	throw  new NotFoundException(user.getId());
        
        final Characters character1 = characterService.getCharacterById("13");
        if( character1 == null)
        	throw  new NotFoundException(user.getId());
        
        characterService.addToUser(character1, user1);
		
		return "redirect:shop";
	}
///////////////////////////////////////////////끝///////////////////////////////////////////////////////
    
    @RequestMapping("/collection")
    public String showCollection(Model model) {

       return "collection";
    }
    
//    @RequestMapping("/docreateAuthority")
//	public String doCreateAuthority(Model model, @Valid Authority authority, BindingResult result) {
//		
//		if(result.hasErrors()) {
//			System.out.println("==Form data does not validated ==");
//			
//			List<ObjectError> errors=result.getAllErrors();
//			
//			for(ObjectError error:errors) {
//				System.out.println(error.getDefaultMessage());
//			}
//			return "usercreated";
//		}
//		
//		authorityService.insert(authority);
//		
//		return "login";
//	}
    
    @RequestMapping("/choiceEnd")
    public String showChoiceEnd(Model model) {
       return "choiceEnd";
    }

	// choice �슫�룞 mapping
	@RequestMapping("/backwardLunge")
	public String showBackwardLunge(Model model) {
		return "choice/backwardLunge";
	}

	@RequestMapping("/bentKneePushCrunch")
	public String showbBentKneePushCrunch(Model model) {
		return "choice/bentKneePushCrunch";
	}

	@RequestMapping("/chairLunge")
	public String showChairLunge(Model model) {
		return "choice/chairLunge";
	}

	@RequestMapping("/chairSquat")
	public String showChairSquat(Model model) {
		return "choice/chairSquat";
	}

	@RequestMapping("/dumbbellDeadlift")
	public String showDumbbellDeadlift(Model model) {
		return "choice/dumbbellDeadlift";
	}

	@RequestMapping("/dumbbellThruster")
	public String showDumbbellThruster(Model model) {
		return "choice/dumbbellThruster";
	}

	@RequestMapping("/frontRaise")
	public String showFrontRaise(Model model) {
		return "choice/frontRaise";
	}

	@RequestMapping("/goodMorning")
	public String showGoodMorning(Model model) {
		return "choice/goodMorning";
	}

	@RequestMapping("/hipBridge")
	public String showHipBridge(Model model) {
		return "choice/hipBridge";
	}

	@RequestMapping("/kickAlternateToeTouch")
	public String showKickAlternateToeTouch(Model model) {
		return "choice/kickAlternateToeTouch";
	}

	@RequestMapping("/kneePushUp")
	public String showKneePushUp(Model model) {
		return "choice/kneePushUp";
	}

	@RequestMapping("/lunge")
	public String showLunge(Model model) {
		return "choice/lunge";
	}

	@RequestMapping("/lyingHipExtension")
	public String showLyingHipExtension(Model model) {
		return "choice/lyingHipExtension";
	}

	@RequestMapping("/quarterSquat")
	public String showQuarterSquat(Model model) {
		return "choice/quarterSquat";
	}

	@RequestMapping("/sideKick")
	public String showSideKick(Model model) {
		return "choice/sideKick";
	}

	@RequestMapping("/sideKneeUp")
	public String showSideKneeUp(Model model) {
		return "choice/sideKneeUp";
	}

	@RequestMapping("/sideLateralRaise")
	public String showSideLateralRaise(Model model) {
		return "choice/sideLateralRaise";
	}

	@RequestMapping("/sideLunge")
	public String showSideLunge(Model model) {
		return "choice/sideLunge";
	}

	@RequestMapping("/squat")
	public String showSquat(Model model) {
		return "choice/squat";
	}

	@RequestMapping("/standingPulldown")
	public String showStandingPulldown(Model model) {
		return "choice/standingPulldown";
	}

	@RequestMapping("/standingShoulderPress")
	public String showStandingShoulderPress(Model model) {
		return "choice/standingShoulderPress";
	}

	@RequestMapping("/standingSideLegRaises")
	public String showStandingSideLegRaises(Model model) {
		return "choice/standingSideLegRaises";
	}

	@RequestMapping("/stepUp")
	public String showStepUp(Model model) {
		return "choice/stepUp";
	}

	@RequestMapping("/wideSquat")
	public String showStandingWideSquat(Model model) {
		//model.addAttribute("dayWO", new DayWorkOut());

		Object current_user = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = ((User) current_user).getUsername();
		Long user_id = Long.parseLong(username);
		Users user = userService.getUserById(user_id);
		model.addAttribute("user", user);
		
		return "choice/wideSquat";
	}

}
