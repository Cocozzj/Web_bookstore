package service;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.Product;
import dao.ProductDao;
import dao.User;
import dao.UserDao;
import util.ServletUtils;


@WebServlet(name="DeleteProduct", urlPatterns={"/DeleteProduct"})
public class DeleteProduct  extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doPost(request, response);
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		// 获取商品id
		String id = request.getParameter("id");
		// 获取商品信息
		ProductDao productDao = new ProductDao();
		productDao.Delete(Integer.valueOf(id));
		System.out.println(Integer.valueOf(id));
		response.sendRedirect(request.getContextPath() + "/admin/show_production.jsp");
	}
}
