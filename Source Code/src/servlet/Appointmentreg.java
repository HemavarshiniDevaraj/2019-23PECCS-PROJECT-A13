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
import javax.servlet.http.HttpSession;

import dbcon.Connecttodata;

/**
 * Servlet implementation class Appointmentreg
 */
@WebServlet("/Appointmentreg")
public class Appointmentreg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Appointmentreg() {
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
		String hosname = req.getParameter("hosname");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		
		String gender = req.getParameter("gender");	
		String age = req.getParameter("age");
		String patientid = req.getParameter("patientid");
		String address = req.getParameter("address");
		String bloodgroup = req.getParameter("bloodgroup");
		String specialist = req.getParameter("specialist");
		String description = req.getParameter("description");
		HttpSession session = req.getSession();
		session.setAttribute("emaill", email);
	

		int z= 0;
		try {
		
		Connection con= Connecttodata.create();
		PreparedStatement ps = con.prepareStatement("INSERT INTO medicalrecord. appointmentform VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, name);
		
		ps.setString(2, email);
		ps.setString(3, hosname);
		ps.setString(4, gender);
		ps.setString(5, age);
		ps.setString(6, patientid);
		ps.setString(7, address);
		ps.setString(8, bloodgroup);
		ps.setString(9, specialist);
		ps.setString(10, description);
		
		ps.setString(11, "appointment");
		ps.setString(12, " ");
		ps.setString(13, " ");
		
		
		
		
		int row=ps.executeUpdate();
		z=1;
		
		if (z==row) {
		resp.sendRedirect("loginsuccess.jsp");
		}else{
		
			resp.sendRedirect("error.jsp");
		
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
	
	
	
	
	}



	
	
	
	
	
	
	
	
	
	
	

}
