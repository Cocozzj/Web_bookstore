package service;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Product;
import dao.ProductDao;

@WebServlet(name="ShowProductDetail", urlPatterns={"/ShowProductDetail"})
public class ShowProductDetail extends HttpServlet {
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
		String id = request.getParameter("id");
		ProductDao productDao = new ProductDao();
		Product products = productDao.getProduct(Integer.valueOf(id));
		
		request.setAttribute("Detail", products);
		
		request.getRequestDispatcher("/client/productListDetail.jsp").forward(request, response);
	}
}
