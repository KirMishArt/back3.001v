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
                person.setName(resultSet.getString("name"));
                person.setSurname(resultSet.getString("surname"));
                person.setSecond_name(resultSet.getString("second_name"));
                person.setTel(resultSet.getString("tel"));
                person.setEmail(resultSet.getString("email"));
                person.setBirth(resultSet.getString("birth"));
                person.setGender(resultSet.getString("gender"));
                person.setFovoLang(resultSet.getString("fovolang"));
                person.setBio(resultSet.getString("bio"));
                persons.add(person);

            }
            resultSet.close();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }finally {

        }

        return persons;
    }

    public void addPerson(Person person){
        try{
            Class.forName("org.postgresql.Driver");
            Connection connection =DriverManager.getConnection(url,username,password);

            String sql="INSERT INTO Persons (name, surname, second_name, tel, email, birth, gender, fovolang, bio) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement= connection.prepareStatement(sql);
            statement.setString(1, person.getName());
            statement.setString(2, person.getSurname());
            statement.setString(3, person.getSecond_name());
            statement.setString(4, person.getTel());
            statement.setString(5, person.getEmail());
            statement.setString(6, person.getBirth());
            statement.setString(7, person.getGender());
            statement.setString(8, person.getFovoLang());
            statement.setString(9, person.getBio());
            statement.executeUpdate();
            statement.close();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
