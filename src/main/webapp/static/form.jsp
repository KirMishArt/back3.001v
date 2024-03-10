<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 10.03.2024
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-16" language="java" %>
<html>
<head>
    <title>Form</title>
</head>
<body>
<form method="post" action="/back3_war/add" >
    <label for="name">Имя:</label>
    <input type="text" id="name" name="name" required><br><br>

    <label for="surname">Фамилия:</label>
    <input type="text" id="surname" name="surname" required><br><br>

    <label for="second_name">Отчество:</label>
    <input type="text" id="second_name" name="second_name" required><br><br>

    <label for="tel">Телефон:</label>
    <input type="tel" id="tel" name="tel" required><br><br>

    <label for="email">E-mail:</label>
    <input type="email" id="email" name="email" required><br><br>

    <label for="birth">Дата рождения:</label>
    <input type="date" id="birth" name="birth" required><br><br>

    <label>Пол:</label><br>
    <input type="radio" id="male" name="gender" value="male" required>
    <label for="male">Мужской</label><br>
    <input type="radio" id="female" name="gender" value="female">
    <label for="female">Женский</label><br><br>

    <label for="fovolang">Любимый язык программирования:</label><br>
    <select id="fovolang" name="fovolang"  required>
        <option value="pascal">Pascal</option>
        <option value="c">C</option>
        <option value="cpp">C++</option>
        <option value="javascript">JavaScript</option>
        <option value="php">PHP</option>
        <option value="python">Python</option>
        <option value="java">Java</option>
        <option value="haskell">Haskell</option>
        <option value="clojure">Clojure</option>
        <option value="prolog">Prolog</option>
        <option value="scala">Scala</option>
    </select><br><br>

    <label for="biography">Биография:</label><br>
    <textarea id="biography" name="biography" rows="4" cols="50" required></textarea><br><br>

    <label for="contract_agreement">С контрактом ознакомлен(а):</label>
    <input type="checkbox" id="contract_agreement" name="contract_agreement" required><br><br>

    <input type="submit" value="Сохранить">

</form>
</body>
</html>
