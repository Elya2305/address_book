package softserve.academy;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/records/list")
public class ListRecordServlet extends HttpServlet {
    private AddressBook addressBook;

    @Override
    public void init() {
        addressBook = AddressBook.getInstance();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        boolean showWarning = false;
        if (request.getParameter("sort") != null) {
            addressBook.sortedBy(SortOrder.valueOf(request.getParameter("sort").toUpperCase()));
        }
        if(request.getParameter("delete") != null){
            showWarning = true;
        }
        request.setAttribute("addressBook", addressBook);
        request.setAttribute("showWarning", showWarning);
        request.getRequestDispatcher("/WEB-INF/list-record.jsp").forward(request, response);
    }
}