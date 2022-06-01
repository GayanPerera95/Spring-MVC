package pharmacy_application.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import pharmacy_application.dao.ItemDao;
import pharmacy_application.model.Item;

@Controller
public class MainController {
	
	@Autowired
	private ItemDao itemdao;
	
	@RequestMapping("/")
	public String home(Model m) {
		
		List<Item> items = itemdao.getItems();
		m.addAttribute("items", items);
		
		return "index";
	}
	
	//search Item
	
	@RequestMapping(value= "/search_item", method=RequestMethod.POST)
	public String searchItem(@RequestParam("freeText") int id, Model model)
	{
		//System.out.println(id);
		Item item = this.itemdao.getItem(id);
		model.addAttribute("item", item);
    	//System.out.println(item);
        return "search_item";
	}

	//show add item form 
	@RequestMapping("/add-item")
	public String addItem(Model m)
	{
		m.addAttribute("title", "Add Item");
		return "add_item_form";
	}
	
	//handle add item form
	@RequestMapping(value="/handle-item", method = RequestMethod.POST)
	public RedirectView handleItem(@ModelAttribute Item item, HttpServletRequest request)
	{
		//System.out.println(item);
		itemdao.createItem(item);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+ "/");
		return redirectView;
	}
	
	//delete handler
		@RequestMapping("/delete/{id}")
		public RedirectView deleteItem(@PathVariable("id") int id, HttpServletRequest request)
		{
			this.itemdao.deleteItem(id);
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath() + "/");
			return redirectView;
		}
		
		@RequestMapping("/update/{id}")
		public String updateForm(@PathVariable("id") int id, Model model)
		{
			Item item = this.itemdao.getItem(id);
			model.addAttribute("item", item);
			return "update_form";
		}
}
