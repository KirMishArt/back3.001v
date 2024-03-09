package back.third.DAO;

import back.third.model.Person;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PersonDAO {
    String url = "jdbc:postgresql://localhost:5432/postgres";
    String password="artemkas2233";
    String username="postgres";
    public List<Person> getAllPersons() {
        List<Person> persons = new ArrayList<>();

        try {
            Class.forName("org.postgresql.Driver");
            Connection connection = DriverManager.getConnection(url, username,password);
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM Persons");
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                Person person = new Person();
                person.setId(resultSet.getInt("id"));
                person.setTel(resultSet.getString("tel"));
                person.setEmail(resultSet.getString("email"));
                person.setBirth(resultSet.getString("birth"));
                person.setGender(resultSet.getString("gender"));
                person.setFovoLang(resultSet.getString("fovolang"));
                person.setBio(resultSet.getString("bio"));
                persons.add(person);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        return persons;
    }
}
