package softserve.academy;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/delete")
public class DeleteRecordServlet extends HttpServlet {
    private AddressBook addressBook;
    private String firstName;
    private String lastName;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        if (firstName == null && lastName == null) {
            firstName = request.getParameter("firstName");
            lastName = request.getParameter("lastName");
            response.sendRedirect("/records/list?delete=true");
        } else {
            if ("yes".equals(request.getParameter("sure"))) {
                addressBook.delete(firstName, lastName);
            }
            response.sendRedirect("/records/list");
            firstName = null;
            lastName = null;
        }

    }
}
