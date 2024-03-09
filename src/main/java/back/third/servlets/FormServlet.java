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
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        PersonDAO personDAO = new PersonDAO();
        List<Person> persons = personDAO.getAllPersons();

        out.println("<table border='1'>");
        out.println("<tr><th>ID</th><th>Tel</th><th>Email</th><th>Birth</th><th>Gender</th><th>Favo Lang</th><th>Bio</th></tr>");
        for (Person person : persons) {
            out.println("<tr>");
            out.println("<td>" + person.getId() + "</td>");
            out.println("<td>" + person.getTel() + "</td>");
            out.println("<td>" + person.getEmail() + "</td>");
            out.println("<td>" + person.getBirth() + "</td>");
            out.println("<td>" + person.getGender() + "</td>");
            out.println("<td>" + person.getFovoLang() + "</td>");
            out.println("<td>" + person.getBio() + "</td>");
            out.println("</tr>");
        }
        out.println("</table>");
    }
}
