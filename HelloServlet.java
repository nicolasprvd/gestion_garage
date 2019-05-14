import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HelloServlet extends HttpServlet {
    @override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            out.println("<html>")
            out.println("<head><title> Test Servlet Garage </title><head>")
            out.println("<body> ")
            out.println("<h1> Le garage n'est pas encore ouvert. </h1>")
            out.println("</body>")
            out.println("</html>")
        } finally {
            out.close();
        }
    }
}