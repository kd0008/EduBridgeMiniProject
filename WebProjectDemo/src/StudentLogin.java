

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
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
 * Servlet implementation class StudentLogin
 */
@WebServlet("/StudentLogin")
public class StudentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentLogin() {
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
		Connection c=null;
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
  	response.setContentType("text/html");
	HttpSession session=request.getSession(true);
        PrintWriter out = response.getWriter();
        try{
            Connection conn=DB.getConnection();
            Statement st =conn.createStatement();
            String query = new String("select * from stu_details where email='" +email+ "' and pass='"+pass+"'"); 
            //System.out.println("Query :"+query);
            ResultSet rs= st.executeQuery(query);
            if(rs.next())  {
		session.setAttribute("Member",email);
		response.sendRedirect("Home.jsp");
            } else { 
		//request.setAttribute("Response","Invalid User name and password");
		response.sendRedirect("Error.jsp");
		//getServletContext().getNamedDispatcher("member").forward(request,response);
            }
            }catch(Exception e){
            	out.println("Exception"+e.getMessage()+e.toString());
            }
            finally{
            	try{
                    if(c!=null)
            	        c.close();
            	}catch(Exception e){
                    out.println("Exception closing the connection"+e.getMessage());
            	}
            }
	}

}
