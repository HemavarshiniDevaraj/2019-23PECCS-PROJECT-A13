package imple;

import inter.Inter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpSession;

import dbcon.Tlfilebean2;
import dbcon.tlfilebean;

import dbcon.Connecttodata;

import pojo.Userbean;

public class Imple implements Inter{
	Connection con;
	@Override
	public int reg(Userbean vb) {
		// TODO Auto-generated method stub
		int u=0;
		try{
			con=Connecttodata.create();	
			PreparedStatement ps = con.prepareStatement("INSERT INTO medicalrecord.user VALUES(id,?,?,?,?,?,?,?)");
			ps.setString(1, vb.getUsername());
			ps.setString(2, vb.getEmail());
			ps.setString(3, vb.getPassword());
			ps.setString(4, vb.getMobilenumber());
			ps.setString(5, vb.getGenerateid());
			ps.setString(6, vb.getAddress());
			ps.setString(7, "request");
			
			u=ps.executeUpdate();
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			return u;
	}

	public boolean log(Userbean lb) {
		// TODO Auto-generated method stub
		boolean b=false;
		try
		{
		
			con=Connecttodata.create();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM medicalrecord.user where email=? and password=? and status= 'approved'");
			ps.setString(1, lb.getEmail());
			ps.setString(2, lb.getPassword());
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				String r =rs.getString("name");
				System.out.println(r);
				
		b=true;
			}
			}catch(Exception e)
		{
			e.printStackTrace();
		}
		return b;
		
	}


	public int tlf(tlfilebean tf) {
		// TODO Auto-generated method stub
		
		int dd=0;
		try
		{
			 con=Connecttodata.create();
			 PreparedStatement ps=con.prepareStatement("INSERT INTO medicalrecord.prescription VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			 ps.setString(1, tf.getName());
			 ps.setString(2, tf.getEmail());
			 ps.setString(3, tf.getGender());
			 ps.setString(4, tf.getAge());
			 ps.setString(5, tf.getPatientid());
			 ps.setString(6, tf.getAddress());
			 ps.setString(7, tf.getBloodgroup());
			 ps.setString(8, tf.getDoctorid());
			 ps.setString(9, tf.getDoctorspecialist());
			 ps.setString(10, tf.getHospitalname());
			 ps.setString(11, tf.getHospitalid());
			 ps.setString(12, tf.getDescription());
			 ps.setString(13, tf.getPrescription());
			 ps.setString(14, tf.getFilename());
			 ps.setString(15, tf.getFiletype());
			 ps.setString(16, tf.getFilesize());
			 ps.setString(17, tf.getFilecontent());
			 ps.setString(18, tf.getEncrypt());
			 ps.setString(19, tf.getDecrypt());
			 ps.setString(20, tf.getDoctorname());
			 ps.setString(21," ");
			 
			 
			 dd=ps.executeUpdate();	
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return dd;
	}
	public int tlf2(Tlfilebean2 tf2) {
		// TODO Auto-generated method stub
		
		int dd=0;
		try
		{
			 con=Connecttodata.create();
			 PreparedStatement ps=con.prepareStatement("INSERT INTO medicalrecord.hospitalmanagement VALUES(id,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			 ps.setString(1, tf2.getHospitalname());
			 ps.setString(2, tf2.getHospitalid());
			 ps.setString(3, tf2.getHospitalemail());
			 ps.setString(4, tf2.getHospitalmobilenumber());
			 ps.setString(5, tf2.getHospitaladdress());
			 ps.setString(6, tf2.getHospitalbirth());
			 ps.setString(7, tf2.getHospitalexperience());
			 ps.setString(8, tf2.getPassword());
			 ps.setString(9, tf2.getFilename());
			 ps.setString(10, tf2.getFiletype());
			 ps.setString(11, tf2.getFilesize());
			 ps.setString(12, tf2.getFilecontent());
			 
			 ps.setString(13, tf2.getEncrypt());
			 ps.setString(14, tf2.getDecrypt());
			 ps.setString(15, "apply");
			 
			 
			 
			 
			 dd=ps.executeUpdate();	
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return dd;
	}

}
