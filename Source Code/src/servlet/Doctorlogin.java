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
import javax.servlet.http.HttpSession;

import dbcon.Connecttodata;

/**
 * Servlet implementation class Doctorlogin
 */
@WebServlet("/Doctorlogin")
public class Doctorlogin extends HttpServlet {

	Connection con;
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = req.getParameter("email");
		
		
		String ps = req.getParameter("password");
		
		
		int z=0;
		
		try {
		
			con= Connecttodata.create();
		Statement st = con.createStatement();
			
			ResultSet rs= st.executeQuery("SELECT * FROM `medicalrecord`.`doctor` WHERE email='"+email+"'and password='"+ps+"' and status='Approved'" );
		
			
			HttpSession session = req.getSession();
		rs.next();
		String namee =rs.getString(2);
		String r1 =rs.getString(6);
		String r2 =rs.getString(9);
		String r3 =rs.getString(7);
		String r4 =rs.getString(8);
		String r5 =rs.getString(9);
		session.setAttribute("doctorname", namee);
		session.setAttribute("hospitalname", r3);
		session.setAttribute("hospitalid", r4);
		session.setAttribute("doctorid", r1);
		session.setAttribute("specia", r2);
		session.setAttribute("specialist", r5);
		
		z=1;
		String r =rs.getString("name");
		
		System.out.println(r1);
		System.out.println(r2);
		
		
		
		resp.sendRedirect("doctorloginsuccessjsp.jsp");
		
		
		
		if(z==0) {
		resp.sendRedirect("error.jsp");
		
		}
		
			
			
		
		
		
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	}

	
	
	}


