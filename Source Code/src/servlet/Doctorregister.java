package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcon.Connecttodata;

/**
 * Servlet implementation class Doctorregister
 */
@WebServlet("/Doctorregister")
public class Doctorregister extends HttpServlet {
	
	Connection con;
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = req.getParameter("username");
		
		String email = req.getParameter("email");
		
		String mobile = req.getParameter("mobilenumber");
		String id = req.getParameter("doctorid");
		
		String hname = req.getParameter("hospitalname");
		String hid = req.getParameter("hospitalid");
		
		String specialist = req.getParameter("specialist");
		
		String pass = req.getParameter("password");
		
		
		int z= 0;
		try {
		
		con= Connecttodata.create();
		PreparedStatement ps = con.prepareStatement("INSERT INTO medicalrecord.doctor VALUES(id,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, name);
		
		ps.setString(2, email);
		ps.setString(3, pass);
		ps.setString(4, mobile);
		ps.setString(5, id);
		ps.setString(6, hname);
		ps.setString(7, hid);
		ps.setString(8, specialist);
		ps.setString(9, "Apply");
		
		
		
		
		
		
		int row=ps.executeUpdate();
		z=1;
		
		if (z==row) {
		resp.sendRedirect("doctorlogin.jsp");
		}else{
		
			resp.sendRedirect("register.jsp");
		
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
	
	
	
	
	}

}
