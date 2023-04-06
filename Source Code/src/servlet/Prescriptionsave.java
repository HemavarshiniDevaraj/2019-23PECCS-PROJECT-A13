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
 * Servlet implementation class Prescriptionsave
 */
@WebServlet("/Prescriptionsave")
public class Prescriptionsave extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Prescriptionsave() {
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
	
	
	
	
	
	
	

		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String gender = req.getParameter("gender");
		String age = req.getParameter("age");	
		String patientid = req.getParameter("patientid");
		
		String address = req.getParameter("address");
		String bloodgroup = req.getParameter("bloodgroup");
		String specialist = req.getParameter("doctorid");
		String doctorspecialist = req.getParameter("doctorspecialist");
		String hospitalname = req.getParameter("hospitalname");
		String hospitalid = req.getParameter("hospitalid");
		String description = req.getParameter("description");
		String prescription = req.getParameter("prescription");
		
		
		
		
		HttpSession session = req.getSession();
		session.setAttribute("emaill", email);
	

		int z= 0;
		try {
		
		Connection con= Connecttodata.create();
		PreparedStatement ps = con.prepareStatement("INSERT INTO medicalrecord. prescription VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, name);
		
		ps.setString(2, email);
		ps.setString(3, gender);
		ps.setString(4, age);
		
		ps.setString(5, patientid);
		ps.setString(6, address);
		ps.setString(7, bloodgroup);
		ps.setString(8, specialist);
		ps.setString(9, doctorspecialist);
		
		ps.setString(10, hospitalname);
		ps.setString(11, hospitalid);
		ps.setString(12, description);
		ps.setString(13, prescription);
		
		
		
		int row=ps.executeUpdate();
		z=1;
		
		if (z==row) {
		resp.sendRedirect("patient.jsp");
		}else{
		
			resp.sendRedirect("error.jsp");
		
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
	
	
	
	
	}



	
	
	
	
	
	
	
	
	
	
	

}
