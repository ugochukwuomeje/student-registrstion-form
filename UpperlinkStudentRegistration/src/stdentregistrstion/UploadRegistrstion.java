package stdentregistrstion;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class UploadRegistrstion
 */
@WebServlet("/UploadRegistrstion")
@MultipartConfig(fileSizeThreshold = 1024 *1024 *5,
  maxFileSize = 1024 * 1024 * 10,
  maxRequestSize = 1024 * 1024 * 20)

public class UploadRegistrstion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadRegistrstion() {
        super();
        // TODO Auto-generated constructor stub
    }

    PrintWriter out2;
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
		doGet(request, response);
		Random rnd = new Random();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String firstname = request.getParameter("firstname");
		String surname = request.getParameter("surname");
		String phonenumber = request.getParameter("phonenumber");
		String email = request.getParameter("email");
		String coverletter = request.getParameter("coverletter");
		
		//////////////////////////////this is for image and file
		Part imagepart = request.getPart("passport");
		String imagename = extractFileName(imagepart);
		String saveimagepath = imagename + rnd.nextInt(1000);
		File filesavepic = new File(saveimagepath);
		
		Part resumepart = request.getPart("resume");
		String resumename = extractFileName(resumepart);
		String saveresumepath = resumename + rnd.nextInt(1000);
		File filesaveresume = new File(saveresumepath);
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/upperlink_registration", "ugochukwu", "ugochukwu");
			PreparedStatement pst = con.prepareStatement("insert into student values(?,?,?,?,?,?,?,?)");
			
			pst.setString(1, null);
			pst.setString(2, firstname);
			pst.setString(3, surname);
			pst.setString(4, email);
			pst.setString(5, phonenumber);
			pst.setString(6,coverletter);
			pst.setString(7,saveimagepath);
			pst.setString(8,saveresumepath);
			pst.executeUpdate();
			out.println("<center><h1>Registration successful...</h1></center>");

		} catch(Exception e) {
			
			out.println(e);
		}
	}

	
	
	private String extractFileName(Part imagepart) {
		// TODO Auto-generated method stub
		
		String contentDisp = imagepart.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for(String s: items) {
			if(s.trim().startsWith("filename")){
				return s.substring(s.indexOf("=")+2, s.length()-1);
			}
		}
		return "";
	}

}
