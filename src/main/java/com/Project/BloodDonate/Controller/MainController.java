package com.Project.BloodDonate.Controller;

import java.time.LocalDate;
import java.time.Period;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Project.BloodDonate.DAO.AdminRepo;
import com.Project.BloodDonate.DAO.DonorRepo;
import com.Project.BloodDonate.DAO.UserRepo;
import com.Project.BloodDonate.Model.*;

@Controller
public class MainController 
{
	@Autowired
	UserRepo userRepo;
	
	@Autowired
	DonorRepo donorRepo;
	
	@Autowired
	AdminRepo adminRepo;
	
	
	ModelAndView md=new ModelAndView();
	
	MainController control;
	
	
	@RequestMapping("/")
	public String login()
	{
		return "login";
	}
	
	@RequestMapping(path="/NewUser", method=RequestMethod.POST)
	public String newUser()
	{
		return "NewUser";
	}
	
	@RequestMapping(path="/AddNewUser", method=RequestMethod.POST)
	public ModelAndView addNewUser(User user)
	{
		userRepo.save(user);
		md.setViewName("login");
		return md;
	}
	
	
	@RequestMapping(path="/verify" , method=RequestMethod.POST)
	public ModelAndView verify(@RequestParam String username,@RequestParam String password)
	{
		List<User> userList=(List<User>)userRepo.findAll();
		int flag=0;
		List<Admin> ad=(List<Admin>) adminRepo.findAll();
		
		if(username.equals(ad.get(0).getAdminUsername()) && password.equals(ad.get(0).getAdminPassword()))
		{
			flag=1;
			md.addObject("currentuser",username);
			md.setViewName("home");
			System.out.println("admin");
		}
		else
		{
			for(int i=0;i<userList.size();i++)
			{
				System.out.println("inside loop");
				System.out.println(userList.get(i).getUserName()+" "+userList.get(i).getPassword());
				if(username.equals(userList.get(i).getUserName()) && password.equals(userList.get(i).getPassword()))
				{
					flag=1;
					List<DonorDet> li=(List<DonorDet>) donorRepo.findAll();
					md.addObject("donors",li);
					md.addObject("currentuser",username);
					md.addObject("userId",userList.get(i).getUserId());
					md.setViewName("userHome");
					break;
				}
			}
		}
		if(flag==0)
		{
			md.addObject("errorMessage","Invalid Input");
			md.setViewName("login");	
		}
		return md;
	}
	
	
	@RequestMapping("homePage")
	public ModelAndView myAccount(@RequestParam String currentuser)
	{
		md.addObject("currentuser", currentuser);
		md.setViewName("home");
		return md;
	}
	
	
	
	@RequestMapping("DonorsPage")
	public ModelAndView donorsPage(@RequestParam String currentuser)
	{
		List<DonorDet> li=(List<DonorDet>) donorRepo.findAll();
		control=new MainController();
		control.refresh(li);
		List<DonorDet> li1=(List<DonorDet>) donorRepo.findAll();
		md.addObject("donors", li1);
		md.addObject("currentuser", currentuser);
		md.setViewName("DonorsPage");
		return md;
	}
	
	
	@RequestMapping("UsersPage")
	public ModelAndView UsersPage(@RequestParam String currentuser)
	{
		List<User> uli=(List<User>)userRepo.findAll();
		md.addObject("usersList",uli);
		md.addObject("currentuser", currentuser);
		md.setViewName("UsersPage");
		return md;
	}
	

	
	@RequestMapping(path="/addingDonor", method=RequestMethod.GET)
	public ModelAndView addingDonor(DonorDet det)
	{
		List<DonorDet> li=(List<DonorDet>) donorRepo.findAll();
		control=new MainController();
		control.refresh(li);
		donorRepo.save(det);
		List<DonorDet> li1=(List<DonorDet>) donorRepo.findAll();
		System.out.println(li);
		//System.out.println(li.get(0).getDonorDate());
		md.addObject("donors", li1);
		md.setViewName("DonorsPage");
		return md;
	}
	
	
	public void refresh(List<DonorDet> li)
	{
		
		if(li!=null) {
		for(DonorDet d: li)
		{
			int day[]=new int[3];
			int a=0,b=0,i;
			String date=d.getDonorDate()+"-";
			System.out.println("Date "+date);
			for(i=0;i<date.length();i++)
			{
				
				if(date.charAt(i)=='-')
				{
					day[a]=Integer.parseInt(date.substring(b, i));
					a++;
					b=i+1;
				}
			}
			System.out.println("Day "+day[2]+"Month "+day[1]+"year "+day[0]);
			LocalDate now=LocalDate.now();
			LocalDate store=LocalDate.of(day[0], day[1], day[2]);
			Period p=Period.between(now, store);
			if(p.getDays()>=90)
			{
				donorRepo.delete(d);
			}
			
		}
		}
	}
	@RequestMapping(path="/deleteDonor", method=RequestMethod.POST)
	public ModelAndView delDonor(@RequestParam String donorId)
	{
		donorRepo.deleteById(Integer.parseInt(donorId));
		List<DonorDet> li1=(List<DonorDet>) donorRepo.findAll();
		System.out.println("yaahuu"+donorId);
		
		System.out.println(li1);
		md.addObject("donors", li1);
		md.setViewName("DonorsPage");
		return md;
	}
	
	@RequestMapping(path="/deleteUser", method=RequestMethod.POST)
	public ModelAndView delUser(@RequestParam String userId)
	{
		System.out.println("yaahuu"+userId);
		userRepo.deleteById(Integer.parseInt(userId));
		List<User> uli=(List<User>)userRepo.findAll();
		md.addObject("usersList",uli);
		md.setViewName("UsersPage");
		return md;
	}
	
	@RequestMapping(path="/changePass", method=RequestMethod.POST)
	public String changePass(@RequestParam String username,@RequestParam String password)
	{
		adminRepo.deleteAll();
		Admin admin=new Admin();
		admin.setAdminPassword(password);
		admin.setAdminUsername(username);
		
		adminRepo.save(admin);
		return "login";
	}
	
	
	@RequestMapping(path="/editUserInfo", method=RequestMethod.POST)
	public String editUserInfo(@RequestParam String name,@RequestParam String userName,@RequestParam String userAddress,
			@RequestParam String userAge,@RequestParam String userSex,@RequestParam String password,
			@RequestParam String userGroup,@RequestParam String userId)
	{
		User user=new User();
		user.setName(name);
		user.setPassword(password);
		user.setUserAddress(userAddress);
		user.setUserAge(Integer.parseInt(userAge));
		user.setUserGroup(userGroup);
		user.setUserName(userName);
		user.setUserSex(userSex);
		userRepo.deleteById(Integer.parseInt(userId));
		userRepo.save(user);
		
		
		System.out.println(user.getUserId());
		return "login";
	}
	
	
	@RequestMapping("UserAccount")
	public ModelAndView userAccount(@RequestParam String userId)
	{
		int id=Integer.parseInt(userId);
		List<User> uli=(List<User>)userRepo.findAll();
		for(User u: uli)
		{
			if(u.getUserId()==id)
			{
				md.addObject("u", u);
				md.setViewName("userAccount");
				break;
			}
		}
		return md;
	}
	
	
	@RequestMapping("userhomePage")
	public ModelAndView homeUser(@RequestParam String currentuser)
	{
		md.addObject("currentuser", currentuser);
		md.setViewName("userHome");
		return md;
	}
	
	
	@RequestMapping("BloodInfo")
	public ModelAndView bloodInfo(@RequestParam String currentuser)
	{
		md.addObject("currentuser", currentuser);
		md.setViewName("BloodInfo");
		return md;
	}
	
	
	
	@RequestMapping("/Apositive")
	public ModelAndView Apos(@RequestParam String currentuser)
	{
		String group="A+";
		List<DonorDet> li=donorRepo.findByDonorGroup(group);
		md.addObject("currentuser", currentuser);
		md.addObject("donorList",li);
		md.setViewName("donorsInfo");
		return md;
	}
	
	@RequestMapping("/Anegative")
	public ModelAndView Aneg(@RequestParam String currentuser)
	{
		String group="A-";
		List<DonorDet> li=donorRepo.findByDonorGroup(group);
		md.addObject("currentuser", currentuser);
		md.addObject("donorList",li);
		md.setViewName("donorsInfo");
		return md;
	}
	
	@RequestMapping("/Bpositive")
	public ModelAndView Bpos(@RequestParam String currentuser)
	{
		String group="B+";
		List<DonorDet> li=donorRepo.findByDonorGroup(group);
		md.addObject("currentuser", currentuser);
		md.addObject("donorList",li);
		md.setViewName("donorsInfo");
		return md;
	}
	
	@RequestMapping("/Bnegative")
	public ModelAndView Bneg(@RequestParam String currentuser)
	{
		String group="B-";
		List<DonorDet> li=donorRepo.findByDonorGroup(group);
		md.addObject("currentuser", currentuser);
		md.addObject("donorList",li);
		md.setViewName("donorsInfo");
		return md;
	}
	
	@RequestMapping("/ABpositive")
	public ModelAndView ABpos(@RequestParam String currentuser)
	{
		String group="AB+";
		List<DonorDet> li=donorRepo.findByDonorGroup(group);
		md.addObject("currentuser", currentuser);
		md.addObject("donorList",li);
		md.setViewName("donorsInfo");
		return md;
	}
	
	@RequestMapping("/ABnegative")
	public ModelAndView ABneg(@RequestParam String currentuser)
	{
		String group="AB-";
		List<DonorDet> li=donorRepo.findByDonorGroup(group);
		md.addObject("currentuser", currentuser);
		md.addObject("donorList",li);
		md.setViewName("donorsInfo");
		return md;
	}
	
	@RequestMapping("/Opositive")
	public ModelAndView Opos(@RequestParam String currentuser)
	{
		String group="O+";
		List<DonorDet> li=donorRepo.findByDonorGroup(group);
		md.addObject("currentuser", currentuser);
		md.addObject("donorList",li);
		md.setViewName("donorsInfo");
		return md;
	}
	
	@RequestMapping("/Onegative")
	public ModelAndView Oneg(@RequestParam String currentuser)
	{
		String group="O-";
		List<DonorDet> li=donorRepo.findByDonorGroup(group);
		md.addObject("currentuser", currentuser);
		md.addObject("donorList",li);
		md.setViewName("donorsInfo");
		return md;
	}
	
	
	@RequestMapping("/logout")
	public String logout()
	{
		return "login";
	}
}
