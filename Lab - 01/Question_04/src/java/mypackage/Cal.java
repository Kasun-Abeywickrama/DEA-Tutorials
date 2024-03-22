
package mypackage;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
@WebServlet(name = "Cal", urlPatterns = {"/Cal"})
public class Cal extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html");
        
        int num1=0,num2=0;
        
        if(request.getParameter("num_1") != null || request.getParameter("num_2") != null){
            num1 = Integer.parseInt(request.getParameter("num_1"));
            num2 = Integer.parseInt(request.getParameter("num_2"));
        }
        
        int sum = num1 + num2;
        
        response.getWriter().println("Total is : "+sum);
        
    }

}
