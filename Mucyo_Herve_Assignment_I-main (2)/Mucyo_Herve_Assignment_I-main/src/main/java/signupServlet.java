import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/signupServlet")
public class signupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("first-name");
        String lastName = request.getParameter("last-name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm-password");
        String birthdate = request.getParameter("birthdate");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String country = request.getParameter("country");
        
        if (password == null || password.isEmpty()) {
            // Handle the case where the password is missing
            response.sendRedirect("signup.jsp?error=missingPassword");
            return;
        }
        // Password validation
        if (!password.equals(confirmPassword)) {
            // Passwords don't match, handle this error (e.g., show an error message)
            response.sendRedirect("signup.jsp?error=passwordMismatch");
            return;
        }

        // Email validation (simple check for illustration, you should use a more robust method)
        if (!email.matches("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}")) {
            // Invalid email format, handle this error (e.g., show an error message)
            response.sendRedirect("signup.jsp?error=invalidEmail");
            return;
        }

        // If everything is valid, you can save the user and set up a session
        // For simplicity, we'll store the user's email in the session
        HttpSession session = request.getSession();
        session.setAttribute("userEmail", email);

        // Redirect to the success page
        response.sendRedirect("success.jsp");
    }
}
