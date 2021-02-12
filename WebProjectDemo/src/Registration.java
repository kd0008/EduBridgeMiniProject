import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdbc.DB;

@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Registration() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection c = null;
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String department = request.getParameter("department");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone_no");

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		try {
			Connection conn = DB.getConnection();
			String query="Insert into staff_details(first_name,last_name,department,gender,email,pass,address,phone_no) values (?,?,?,?,?,?,?,?);";    
            PreparedStatement pstmt=conn.prepareStatement(query);    
            pstmt.setString(1, fname);       
            pstmt.setString(2,lname);    
            pstmt.setString(3, department);    
            pstmt.setString(4, gender); 
            pstmt.setString(5, email);
            pstmt.setString(6, pass);
            pstmt.setString(7,phone); 
            pstmt.setString(8, address);

            int x=pstmt.executeUpdate();    
			if (email.equals("XXXX")) {
				request.setAttribute("Response", "Such User Already Exists.");
			    getServletContext().getRequestDispatcher("/registration.jsp").forward(request, response);
			} else {
				session.setAttribute("Member", email);
				response.sendRedirect("loginsuccess.jsp");	
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
