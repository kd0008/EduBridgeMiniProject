

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdbc.DB;

/**
 * Servlet implementation class UpdateStudent
 */
@WebServlet("/UpdateStudent")
public class UpdateStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStudent() {
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
		String stu_id=request.getParameter("stu_id");
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
		if(stu_id != null)
		{
		int personID = Integer.parseInt(stu_id);
		try {
			Connection conn = DB.getConnection();
            String sql = ("Update stu_details set first_name=?,middle_name=?,last_name=?,course=?,gender=?,phone=?,address=?,email=?,pass=?,con_pass=? where stu_id="+stu_id);
            PreparedStatement pstmt = conn.prepareStatement(sql);
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
            int j = pstmt.executeUpdate();
            if(j > 0)
            {
            out.print("Record Updated Successfully");
            }
            else{
            	out.print("Record not Updated ");
            }
			if (stu_id.equals("XXXX")) {
				request.setAttribute("Response", "Such User Already Exists Please Choose Another Id");
			    getServletContext().getRequestDispatcher("/registration.jsp").forward(request, response);
			} else {
				session.setAttribute("Member", email);
				response.sendRedirect("Home.jsp");	
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
