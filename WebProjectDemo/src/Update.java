

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

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection c = null;
		String staff_id=request.getParameter("staff_id");
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
		if(staff_id != null)
		{
		int personID = Integer.parseInt(staff_id);
		try {
			Connection conn = DB.getConnection();
            String sql = ("Update staff_details set first_name=?,last_name=?,department=?,gender=?,email=?,pass=?,address=?,phone_no=? where staff_id="+staff_id);
            PreparedStatement pstmt = conn.prepareStatement(sql);
           // pstmt.setString(1, staff_id); 
            pstmt.setString(1, fname);       
            pstmt.setString(2,lname);    
            pstmt.setString(3, department);    
            pstmt.setString(4, gender); 
            pstmt.setString(5, email);
            pstmt.setString(6, pass);
            pstmt.setString(7, address);
            pstmt.setString(8,phone); 
           // pstmt.setString(10, staff_id);  
           
            int j = pstmt.executeUpdate();
            if(j > 0)
            {
            out.print("Record Updated Successfully");
            }
            else{
            	out.print("Record not Updated ");
            }
			if (staff_id.equals("XXXX")) {
				request.setAttribute("Response", "Such User Already Exists Please Choose Another Id");
			    getServletContext().getRequestDispatcher("/registration.jsp").forward(request, response);
			} else {
				session.setAttribute("Member", email);
				response.sendRedirect("loginsuccess.jsp");	
			}
		
		} 
		catch (Exception e) {
			out.println("Exception" + e.getMessage() + e.toString());
		} 
		finally {
			try {
				if (c != null)
					c.close();
			} catch (Exception e) {
				out.println("Exception closing the connection" + e.getMessage());
			}
		}
		}
	}
}
