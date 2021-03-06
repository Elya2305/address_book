package softserve.academy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/create")
public class CreateRecordServlet extends HttpServlet {
    private AddressBook addressBook;
    private boolean showWarning;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String address = request.getParameter("address");
        showWarning = firstName.isBlank() || lastName.isBlank() || address.isBlank() ||
                !addressBook.create(firstName, lastName, address);
        request.setAttribute("showWarning", showWarning);
        if (showWarning) {
            request.getRequestDispatcher("/WEB-INF/create-record.jsp").forward(request, response);
        }
        response.sendRedirect("/records/list");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("showWarning", showWarning);
        request.getRequestDispatcher("/WEB-INF/create-record.jsp").forward(request, response);
    }
}
