import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.io.PrintWriter;
import jakarta.servlet.RequestDispatcher;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        String user = request.getParameter("username");
        String pass = request.getParameter("password");

        if(user.equals("Ahmad") && pass.equals("4567")){

            request.setAttribute("accountType", "Premium Student");
            request.setAttribute("email", "ahmad@siswa.edu.my");

            RequestDispatcher rd = request.getRequestDispatcher("/AccountServlet");
            rd.forward(request, response);

        }else if(user.equals("Siti") && pass.equals("1234")){

            request.setAttribute("accountType", "Standard Student");
            request.setAttribute("email", "siti@siswa.edu.my");

            RequestDispatcher rd = request.getRequestDispatcher("/AccountServlet");
            rd.forward(request, response);

        }else{
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println("<h3 style='color:red'>Login Failed! Invalid credentials.</h3>");
            out.println("<a href='login.html'>Try Again</a>");
        }

    }
}
