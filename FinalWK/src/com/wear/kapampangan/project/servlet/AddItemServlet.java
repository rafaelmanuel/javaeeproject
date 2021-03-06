package com.wear.kapampangan.project.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.wear.kapampangan.project.database.DBManager;
import com.wear.kapampangan.project.library.Item;

@WebServlet("/item/add")
public class AddItemServlet extends HttpServlet {
	
	private DBManager manager = null;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String productCode = (request.getParameter("productCode") != null ? request.getParameter("productCode") : "");
		String name = (request.getParameter("name") != null ? request.getParameter("name") : "");
		String description = (request.getParameter("description") != null ? request.getParameter("description") : "");
		String status = (request.getParameter("status") != null ? request.getParameter("status") : "");
		String colorList = (request.getParameter("colorList") != null ? request.getParameter("colorList") : "");
		String sizeList = (request.getParameter("sizeList") != null ? request.getParameter("sizeList") : "");
		double price = (request.getParameter("price") != null ? Double.parseDouble(request.getParameter("price")) : 0.0);
		String image = "images/product/plain-shirt.jpg";
		
		try{
			manager = (DBManager) request.getServletContext().getAttribute("dbmanager");
			manager.addItem(new Item(productCode , name , price , image  , status , description));
			manager.addInventoryDetail(productCode, 0, (byte) 0 );
			//size list
			if(!sizeList.trim().equals("")){
				for(String str : sizeList.split(":")){
					//System.out.println(str);
					if(!str.trim().equals("")){
						manager.addSizeToItem(productCode, manager.getSizeByName(str.trim()).getId());
					}
				}
			}
			
			//color list
			if(!colorList.trim().equals("")){
				for(String str : colorList.split(":")){
					if(!str.trim().equals("")){
						manager.addColorToItem(productCode, manager.getColorByName(str.trim()).getId());
					}
				}
			}
			
			response.sendRedirect("/FinalWK/wearkapampangan/wear/team/kapampangan/item-list.jsp");
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

}
