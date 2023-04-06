package servlet;

import imple.Imple;
import inter.Inter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Userbean;

/**
 * Servlet implementation class Userreg
 */
@WebServlet("/Userreg")
public class Userreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String us=request.getParameter("username");
		String email=request.getParameter("email");
		String pass=request.getParameter("password");
		String mobile=request.getParameter("mobilenumber");
		String id=request.getParameter("generateid");
	String address=request.getParameter("address");

	Userbean v=new Userbean();
	v.setUsername(us);
	v.setEmail(email);
	v.setPassword(pass);
	v.setMobilenumber(mobile);
	v.setGenerateid(id);
	v.setAddress(address);
	
	Inter n=new Imple();
	int b=n.reg(v);
if(b==1){
	response.sendRedirect("userlogin.jsp");
}
else{
	response.sendRedirect("error.jsp");
}
}
}	