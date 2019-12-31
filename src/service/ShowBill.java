package service;

import java.io.IOException;
import java.util.Set;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.Order;
import dao.OrderDao;
import dao.Product;
import util.ServletUtils;


@WebServlet(name="ShowBill", urlPatterns={"/ShowBill"})
public class ShowBill extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	@Override
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie cookie = ServletUtils.getCookie(request, "user");
	
		int id = Integer.valueOf(cookie.getValue());
		System.out.println(id);
		
			OrderDao orderDao = new OrderDao();
			Set<Order> order =orderDao.getOrder(id);
			
			if (order != null) {
				request.setAttribute("orderSet", order);
				
			}
			System.out.println("hello2");
			System.out.println(order);
			request.getRequestDispatcher("/client/bill.jsp").forward(request, response);
	}
}