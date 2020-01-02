package com.springmvc.controller;

import java.io.File;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.springmvc.entity.Menu;
import com.springmvc.service.MenuService;

@Controller
@RequestMapping("/admin/")
public class AdminMenuController {
	@Autowired
	MenuService menuService;
	@Autowired
	ServletContext context;

	@RequestMapping("menu")
	public String menu(ModelMap model) {
		model.addAttribute("list", menuService.getMenus());
		return "admin/menu";
	}

	@RequestMapping("menu/add-item")
	public String addForm(ModelMap model) {
		model.addAttribute("title", "Add new item");
		model.addAttribute("typeSubmit", "add");
		model.addAttribute("menu", new Menu());
		return "admin/menu-form";
	}

	@RequestMapping(value="saveMenu", params="add")
	public String saveMenu(@RequestParam("id") int id, @RequestParam("name") String name,
			@RequestParam("img") MultipartFile img, @RequestParam("type") String type, @RequestParam("price") int price,
			@RequestParam("discount") int discount, @RequestParam("info") String info,
			@RequestParam("status") boolean status) {
		//System.out.println(name);
		try {
			String uriImg = context.getRealPath("/resources/uploads/" + img.getOriginalFilename());
			System.out.println(uriImg);
			img.transferTo(new File(uriImg));
			System.out.println();

		} catch (Exception e) {
			System.out.println(e);
		}

		Menu menu = new Menu(id, name, img.getOriginalFilename(), type, price, discount, status, info);
		menuService.add(menu);
		return "redirect:../admin/menu";
	}
	
	@RequestMapping("menu/edit-item")
	public String editMenu(ModelMap model,@RequestParam("menuID") int menuID) {
		System.out.println(menuID);
		model.addAttribute("title", "Edit Menu");
		model.addAttribute("typeSubmit", "edit");
		model.addAttribute("menu", menuService.getMenu(menuID));
		return "admin/menu-form";
	}
	@RequestMapping(value="saveMenu", params="edit")
	public String edit(@RequestParam("id") int id, @RequestParam("name") String name,
			@RequestParam("img") MultipartFile img, @RequestParam("type") String type, @RequestParam("price") int price,
			@RequestParam("discount") int discount, @RequestParam("info") String info,
			@RequestParam("status") boolean status) {
		System.out.println(info);	
		
		Menu menu = new Menu(id, name, img.getOriginalFilename(), type, price, discount, status, info);

		if(img.isEmpty()) {
			Menu tmp = menuService.getMenu(id);
			menu.setImg(tmp.getImg());
		}else {
			try {
				String uriImg = context.getRealPath("/resources/uploads/" + img.getOriginalFilename());
				System.out.println(uriImg);
				img.transferTo(new File(uriImg));

			} catch (Exception e) {
				System.out.println(e);
			}
		}
		
		menuService.edit(menu);
	
		return "redirect:../admin/menu";
	}
		
	@RequestMapping("menu/delete-item")
	public String deleteMenu(@RequestParam("menuID") int menuID) {
		
		menuService.delete(menuID);
		return "redirect:/admin/menu";
	}

//	@ModelAttribute("category")
//	public List<String> category() {
//		List<String> cate = new ArrayList<>();
//		cate.add("Cà phê");
//		cate.add("Trà sữa");
//		cate.add("Nước ép");
//		cate.add("Bánh ngọt");
//
//		return cate;
//	}

}
