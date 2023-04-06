package servlet;

import imple.Imple;
import inter.Inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Userbean;

/**
 * Servlet implementation class Userlogin
 */
@WebServlet("/Userlogin")
public class Userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		String email=req.getParameter("email");
		System.out.println("email"+email);
		
		
		
		String pass=req.getParameter("password");
		
		Userbean n=new Userbean();
		n.setEmail(email);
	    n.setPassword(pass);
	    
	    Inter b=new Imple();
	    boolean r=b.log(n);
	    if(r==true){
	    	resp.sendRedirect("loginsuccess.jsp");
	    }else
	    	resp.sendRedirect("error.jsp");
	}

	
	
	
	
	

	
}
	

	
	


