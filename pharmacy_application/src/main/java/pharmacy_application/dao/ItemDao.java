package pharmacy_application.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import pharmacy_application.model.Item;

@Component
public class ItemDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	//create
	@Transactional
	public void createItem(Item item) {
		
		this.hibernateTemplate.saveOrUpdate(item);
	}
	
	//get all items
	public List<Item> getItems()
	{
		List<Item> items = this.hibernateTemplate.loadAll(Item.class);
		return items;
	}
	
	//search
	
	public List<Item> search(String keyword)
	{
		return search(keyword);
			
     }
	
	
	
	//
	public List<Item> listAll(String keyword)
	{
		List<Item> items = this.hibernateTemplate.loadAll(Item.class);
		return items;
	}
	
	//delete the single item
	@Transactional
	public void deleteItem(int itemid)
	{
		Item i = this.hibernateTemplate.load(Item.class, itemid);
		this.hibernateTemplate.delete(i);
	}
	
	//get the single product
	public Item getItem(int itemid) {
		return this.hibernateTemplate.get(Item.class, itemid);
	}
}
