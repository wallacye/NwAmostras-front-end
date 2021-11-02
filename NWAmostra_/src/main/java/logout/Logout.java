package logout;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "Logout", urlPatterns = {"/Logout"})
public class Logout extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        String logado = (String) request.getSession().getAttribute("logado");
        session.setAttribute(logado,"FALSE");
        session.invalidate();
        response.sendRedirect("jsp/login.jsp");
    }
}
