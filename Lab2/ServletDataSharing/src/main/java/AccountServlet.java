import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AccountServlet")
public class AccountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");

        String accountType = (String) request.getAttribute("accountType");
        String email = (String) request.getAttribute("email");

        out.println("<html><body>");
        out.println("<h2>Account Information</h2>");
        out.println("<hr>");
        out.println("<p><strong>Welcome,  " + username + "!</strong></p>");
        out.println("<p><b>Email:</b> " + email + "</p>");
        out.println("<p><b>Account Type:</b> " + accountType + "</p>");
        out.println("<br>");
        out.println("<a href='login.html'>Logout</a>");
        out.println("</body></html>");
    }
}
