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
 * Servlet implementation class Loginpage
 */
@WebServlet("/Loginpage")
public class Loginpage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Loginpage() {
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
		
String email = req.getParameter("email");
		
		
		String password = req.getParameter("password");
	
		
		
		int z=0;
		
		try {
		
		Connection con= Connecttodata.create();
		Statement st = con.createStatement();
		ResultSet rs= st.executeQuery("SELECT * FROM medicalrecord.user where email='"+email+"' and password='"+password+"'");
	
	
		while(rs.next())
		{	
		z=1;
		String r =rs.getString("name");
		System.out.println(r);
		HttpSession session = req.getSession();
		session.setAttribute("name", r);
		session.setAttribute("vmail", email);
		
		
		}
		if(z==0) {
		resp.sendRedirect("error.jsp");
		
		}else{
		
			resp.sendRedirect("loginsuccess.jsp");
			
		}
		
		
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	}

	
	
	}


