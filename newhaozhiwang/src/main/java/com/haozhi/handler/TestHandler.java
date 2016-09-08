package com.haozhi.handler;

import java.io.File;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/items")
@SessionAttributes(value={"items"})
public class TestHandler {	
	@RequestMapping("/editItemsSubmit")
	   public String editItemsSubmit( Model model,HttpServletRequest request,//Integer id,
			  MultipartFile items_pic		// 用来接收商品图片
			   )throws Exception {
	      // 上传图片的原始名称
	      String originalFilename = items_pic.getOriginalFilename();
	      // 上传图片
	      if (items_pic != null&&originalFilename!=null&&originalFilename.length()>0) {// 存储图片的物理路径

	        String pic_path = "D:\\apache-tomcat-7.0.30\\webapps\\touxiangPic\\";

	        // 新的图片名称  UUID.randomUUID()随机数

	/*        String newFilename = UUID.randomUUID()
	              +originalFilename.substring(originalFilename.lastIndexOf("."));*/

	        String newFilename = new Date().getTime()+""+new Random().nextInt(100000)
	        		 +originalFilename.substring(originalFilename.lastIndexOf("."));

	        //新的图片
	        File newfile=new java.io.File(pic_path+newFilename);
	        //将内存的数据写入磁盘
	        items_pic.transferTo(newfile);
	        //上传成功需要经新的图片名称写到itemsCustom
/*	        itemsCustom.setPic(newFilename);*/
	      }
	      // 调用service更新商品信息，页面需要将商品信息传到此方法
	      //itemsService.updateItems(id,itemsCustom);
	      // 重定向不用加跟路径
	      // return "redirect:queryItems.action";
	      // 页面转发
	      return "forward:test.jsp";
	   }
}

