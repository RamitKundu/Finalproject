
package com.niit.MedicartFrontEnd.Controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.MedicartFrontEnd.Dao.ProductDao;
import com.niit.MedicartFrontEnd.Model.Product;

@Controller
public class ProductController {
	
	@Autowired
	ProductDao productDao;
	

	
	@RequestMapping("/")
	public ModelAndView showLandingpage(){
		ModelAndView mv=new ModelAndView("Home");
		return mv;
	}
	
	@RequestMapping("/welcomeadmin")
	public ModelAndView showAdminProductInventory(){
		ModelAndView mv=new ModelAndView("AdminProductInventory");
		return mv;
	}
	
	@RequestMapping("/admin")
	public ModelAndView admin(@ModelAttribute("pro") Product product){		
		ModelAndView mv=new ModelAndView("Admin");
		mv.addObject("pro",product);
		return mv;
		
	}
	
	@RequestMapping(value="/adminproduct" ,method=RequestMethod.POST)
	public String insertopp(@ModelAttribute("pro") Product product,HttpServletRequest request){
		
		productDao.add(product);		
		MultipartFile file=product.getFile();
		
		String originalFile=file.getOriginalFilename();
		String filePath=request.getSession().getServletContext().getRealPath("/resources/img/product/");
		String fileName=filePath+"//" + product.getId() + ".png";
		try{
			byte[] imagearr=file.getBytes();
			BufferedOutputStream fos=new BufferedOutputStream(new FileOutputStream(fileName));
			fos.write(imagearr);
			fos.close();
		}
		catch (IOException e){
			e.printStackTrace();
			 
		}
		return "redirect:/productdetails";
	}
	
	
	@RequestMapping(value="/productdetails")
	public ModelAndView showall(){
		ModelAndView mv=new ModelAndView("AdminProductsDetails");
		List<Product> obj=productDao.getAll();
		mv.addObject("products",obj);
		return mv;
	}
	@RequestMapping(value="/viewall")
	public ModelAndView viewll(){
		ModelAndView mv=new ModelAndView("AdminProductsDetails");
		List<Product> obj=productDao.getAll();
		mv.addObject("products",obj);
		return mv;
	}
	@RequestMapping(value="/viewall/{category}")
	public ModelAndView viewallbycat(@PathVariable("category")String cat){
		ModelAndView mv=new ModelAndView("AdminProductsDetails");
		List<Product> obj=productDao.getByCategory(cat);
		mv.addObject("products",obj);
		return mv;
	}

	@RequestMapping("/edit/{id}")
	public ModelAndView edit(@PathVariable("id") int id){
		ModelAndView mv=new ModelAndView("editpage");
	Product product=productDao.getById(id);
	mv.addObject("pro",product);
	return mv;
		
	}
	@RequestMapping(value="/update" , method=RequestMethod.POST)
	public String update(@ModelAttribute("pro")Product product){
		productDao.update(product);
		return  "redirect:/productdetails";
		
}
	@RequestMapping("delete/{id}")
	public String delete(@PathVariable("id") int id){
		Product product=productDao.getById(id);
		productDao.delete(product);
		return  "redirect:/productdetails";
	}
	
	@RequestMapping()
	public ModelAndView singleProductPage(@PathVariable("id")int id){
		
		ModelAndView mv=new ModelAndView("SingleProductPage");
		Product product=productDao.getById(id);
		mv.addObject("pro",product);
		return mv;
		
		
		
		
		
	}
	
	
	}





	
	
		






		
	
