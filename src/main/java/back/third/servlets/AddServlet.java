package back.third.servlets;

import back.third.DAO.PersonDAO;
import back.third.model.Person;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/add")
public class AddServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        Person person;
        request.setCharacterEncoding("UTF-16");
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String second_name = request.getParameter("second_name");
        String tel = request.getParameter("tel");
        String email = request.getParameter("email");
        String birth = request.getParameter("birth");
        String gender = request.getParameter("gender");
        String fovolang = request.getParameter("fovolang");
        String bio = request.getParameter("bio");
        person=new Person(name,surname,second_name,tel,email,birth,gender,fovolang,bio);
        PersonDAO personDAO=new PersonDAO();
        personDAO.addPerson(person);
        resp.sendRedirect("/back3_war/persons");
    }
}
