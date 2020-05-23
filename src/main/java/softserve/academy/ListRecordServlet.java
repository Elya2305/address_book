package softserve.academy;

import javax.servlet.RequestDispatcher;
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
    public void init(){
        addressBook = AddressBook.getInstance();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameter("sort")!=null){
            addressBook.sortedBy(SortOrder.valueOf(request.getParameter("sort").toUpperCase()));
        }
        request.setAttribute("addressBook", addressBook);
        request.getRequestDispatcher("/WEB-INF/list-record.jsp").forward(request, response);
    }
}
