package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcon.Connecttodata;

/**
 * Servlet implementation class Adminlogin
 */
@WebServlet("/Adminlogin")
public class Adminlogin extends HttpServlet {
	Connection con;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
  	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

String email = req.getParameter("email");
		
		
		String ps = req.getParameter("password");
		
		
		int z=0;
		
		try {
		
			con= Connecttodata.create();
		Statement st = con.createStatement();
			
			ResultSet rs= st.executeQuery("SELECT * FROM medicalrecord.admin WHERE email= '"+email+"'and password= '"+ps+"'" );
		
		while(rs.next())
		{	
		z=1;
		
		
		
		}
		if(z==0) {
		resp.sendRedirect("adminlogin.jsp");
		
		}else{
		
			resp.sendRedirect("adminloginsuccess.jsp");
			
		}
		
		
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
	
	
	}

}
