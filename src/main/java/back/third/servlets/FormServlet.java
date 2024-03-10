package back.third.servlets;

import back.third.DAO.PersonDAO;
import back.third.model.Person;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/persons")
public class FormServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PersonDAO personDAO = new PersonDAO();
        List<Person> persons = personDAO.getAllPersons();

        request.setAttribute("persons", persons);
        request.getRequestDispatcher("/WEB-INF/persons.jsp").forward(request, response);
    }

}
