

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class LoginServelet
 */
public class LoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Hard-coded username and password (replace with your own)
        String correctUsername = "admin";
        String correctPassword = "root";

        // Get user-entered credentials
        String username = request.getParameter("email");
        String password = request.getParameter("password");

        if (username.equals(correctUsername) && password.equals(correctPassword)) {
            // Successful login, redirect to the home page or another protected resource
            response.sendRedirect("success.jsp");
        } else {
            // Incorrect credentials, redirect to the forgot password page
            response.sendRedirect("forgotPassword.jsp");
        }
//		doGet(request, response);
	}

}
