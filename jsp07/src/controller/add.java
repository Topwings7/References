package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("*.do")
public class add extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public add() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actiontest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actiontest(request, response);
	}

	private void actiontest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String command = request.getRequestURI().substring(request.getContextPath().length());
		String viewPage = null;
		
		if(command.equals("/add.do")) {
			String productId   = request.getParameter("productId");
			String productName = request.getParameter("productName");
			int	   price       = Integer.parseInt(request.getParameter("price"));
			Cart cart = new Cart();
			cart.setProductId(productId);
			cart.setProductName(productName);
			cart.setPrice(price);
		
			
			if(session.getAttribute("list")==null) {
				ArrayList<Cart> list = new ArrayList<Cart>();
				session.setAttribute("list", list);
				list.add(cart);
				System.out.println(list);
			}else {
				@SuppressWarnings("unchecked")
				ArrayList<Cart> list = (ArrayList<Cart>) session.getAttribute("list");
				list.add(cart);
				session.setAttribute("list", list);
				System.out.println(list);
			}
			viewPage = "/cart/from.jsp";
		
		}else if(command.equals("/view.do")) {
			viewPage = "/cart/view.jsp";
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
