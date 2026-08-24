package murach.email;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import murach.business.User;

public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String url = "/index.html";

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/index.html";  // the "join" page
        }
        else if (action.equals("add")) {

            // get parameters from the request
            String firstName = request.getParameter("first_name");
            String lastName = request.getParameter("last_name");
            String email = request.getParameter("email");
            String dob = request.getParameter("date_of_birth");
            String hear = request.getParameter("hear");
            String[] values = request.getParameterValues("receive");
            String contact = request.getParameter("contact");
            // store data in User object and save User object in database
            User user = new User(firstName, lastName, email, dob, hear, values, contact);

            // set User object in request object and set URL
            request.setAttribute("user", user);
            url = "/thanks.jsp";  // the "thanks" page
        }

        // forward request and response objects to specified URL
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);
    }
}