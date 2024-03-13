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
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name= req.getParameter("name");
        String surname= req.getParameter("surname");
        String second_name= req.getParameter("second_name");
        String tel= req.getParameter("tel");
        String email= req.getParameter("email");
        String birth= req.getParameter("birth");
        String gender= req.getParameter("gender");
        String fovolang= req.getParameter("fovolang");
        String bio= req.getParameter("bio");
        Person person=new Person(name,surname,second_name,tel,email,birth,gender,fovolang,bio);
        PersonDAO personDAO=new PersonDAO();
        personDAO.addPerson(person);
        resp.sendRedirect(req.getContextPath() + "/persons");
    }
}
