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
 * Servlet implementation class Managementlogin
 */
@WebServlet("/Managementlogin")
public class Managementlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Managementlogin() {
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

		Connection con;
		
		String email = req.getParameter("email");
		
		
		String ps = req.getParameter("password");
		
		
		int z=0;
		
		try {
		
			con= Connecttodata.create();
		Statement st = con.createStatement();
			
			ResultSet rs= st.executeQuery("SELECT * FROM `medicalrecord`.`hospitalmanagement` WHERE hospitalemail='"+email+"'and password='"+ps+"' and status='Approved'" );
		
			
			HttpSession session = req.getSession();
		rs.next();

		String r1 =rs.getString(6);
		String r2 =rs.getString(9);
		String r3 =rs.getString(7);
		String r4 =rs.getString(8);
		String hosname=	rs.getString(2);
		session.setAttribute("hoss", hosname);
		/*session.setAttribute("doctorname", namee);
		session.setAttribute("hospitalname", r3);
		session.setAttribute("hospitalid", r4);
		session.setAttribute("doctorid", r1);
		session.setAttribute("specialist", r2);*/
		z=1;
		
		
		/*System.out.println(r1);
		System.out.println(r2);*/
		
		
		
		resp.sendRedirect("managementloginsuccess.jsp");
		
		
		
		if(z==0) {
		resp.sendRedirect("error.jsp");
		
		}
		
			
			
		
		
		
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	}

	
	
	



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	}


