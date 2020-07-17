package softserve.academy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/update")
public class UpdateRecordServlet extends HttpServlet {
    private AddressBook addressBook;
    private String firstName;
    private String lastName;
    private boolean showWarning;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        showWarning = request.getParameter("address").isBlank();
        if (showWarning) {
            response.sendRedirect("/records/update?firstName=" + firstName + "&lastName=" + lastName);
        } else {
            addressBook.update(firstName, lastName, request.getParameter("address"));
            response.sendRedirect("/records/list");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("showWarning", showWarning);
        firstName = request.getParameter("firstName");
        lastName = request.getParameter("lastName");
        String address = addressBook.read(firstName, lastName);
        if (address == null) {
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
        }
        request.setAttribute("address", address);
        request.getRequestDispatcher("/WEB-INF/update-record.jsp").forward(request, response);
    }
}
