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


@WebServlet(name="ShowAllBill", urlPatterns={"/ShowAllBill"})
public class ShowAllBill extends HttpServlet {
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
		
			OrderDao orderDao = new OrderDao();
			List<Order> order =orderDao.getAllOrder();
			
			if (order != null) {
				request.setAttribute("BillSet", order);
				
			}
			
		
			request.getRequestDispatcher("/admin/ShowBill.jsp").forward(request, response);
	}
}