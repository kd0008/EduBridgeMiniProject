

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdbc.DB;

@WebServlet("/StudentRegistration")
public class StudentRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public StudentRegistration() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection c = null;
		String firstname = request.getParameter("firstname");
		String middlename = request.getParameter("middlename");
		String lastname = request.getParameter("lastname");
		String course = request.getParameter("course");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String pass = request.getParameter("psw");
		String con_pass = request.getParameter("psw-repeat");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		
		
		try {
			Connection conn = DB.getConnection();
			String query="Insert into stu_details(first_name,middle_name,last_name,course,gender,phone,address,email,pass,con_pass) values (?,?,?,?,?,?,?,?,?,?);";    
            PreparedStatement pstmt=conn.prepareStatement(query);    
            pstmt.setString(1, firstname);    
            pstmt.setString(2, middlename);    
            pstmt.setString(3,lastname);    
            pstmt.setString(4, course);    
            pstmt.setString(5, gender);    
            pstmt.setString(6,phone); 
            pstmt.setString(7, address);
            pstmt.setString(8, email);
            pstmt.setString(9, pass);
            pstmt.setString(10, con_pass);
            int x=pstmt.executeUpdate();    
            
            if(x==1)    
            {    
            out.println("Values Inserted Successfully");    
            }    
			if (email.equals("XXXX")) {
				request.setAttribute("Response", "Such User Already Exist!!");
			    request.getRequestDispatcher("/registration.jsp").forward(request, response);
			} else {
				session.setAttribute("Member", email);
				response.sendRedirect("Home.jsp");
				
			}
		} catch (Exception e) {
			out.println("Exception" + e.getMessage() + e.toString());
		} finally {
			try {
				if (c != null)
					c.close();
			} catch (Exception e) {
				out.println("Exception closing the connection" + e.getMessage());
			}
		}
	}
}
