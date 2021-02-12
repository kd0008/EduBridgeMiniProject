

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
 * Servlet implementation class Delete
 */
@WebServlet("/Delete")
public class Delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		Connection c = null;
		String id = request.getParameter("stu_id");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		
		try{
			Connection conn = DB.getConnection();
			String sql="delete from stu_details where stu_id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            int i = ps.executeUpdate();
            if (id.equals("XXXX")) {
				request.setAttribute("Response", "Such User Already Deleted Please Choose Another Id");
			    getServletContext().getRequestDispatcher("/delete.jsp").forward(request, response);
			} else {
				session.setAttribute("Member", id);
				String relpath = new java.net.URL(request.getScheme(), request.getServerName(), request.getServerPort(),request.getContextPath()).toString();
				getServletContext().getRequestDispatcher("/loginsuccess.jsp").forward(request, response);}
            System.out.println(i+"Record deleted successfully");
		}
		catch (Exception e) {
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
