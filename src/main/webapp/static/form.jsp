<%@ page contentType="text/html;charset=UTF-16" language="java" %>
<html>
<head>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <style media="screen">
        *,
        *:before,
        *:after{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        body{
            background-color: #080710;
        }
        .background{
            width: 480px;
            height: 520px;
            position: absolute;
            transform: translate(-50%,-50%);
            left: 50%;
            top: 50%;
        }
        .background .shape{
            height: 200px;
            width: 200px;
            position: absolute;
            border-radius: 50%;
        }
        .shape:first-child{
            background: linear-gradient(
                    #1845ad,
                    #a1cae8
            );
            left: -80px;
            top: -80px;
        }
        .shape:last-child{
            background: linear-gradient(
                    to right,
                    #ff512f,
                    #f09819
            );
            right: -30px;
            bottom: -80px;
        }
        form{
            width: 400px;
            background-color: rgba(255,255,255,0.13);
            position: absolute;
            transform: translate(-50%,-50%);
            top: 100%;
            left: 50%;
            border-radius: 10px;
            backdrop-filter: blur(10px);
            border: 2px solid rgba(255,255,255,0.1);
            box-shadow: 0 0 40px rgba(8,7,16,0.6);
            padding: 50px 35px;
            margin-bottom: 40px;
        }
        form *{
            font-family: 'Poppins',sans-serif;
            color: #9f9f9f;
            letter-spacing: 0.5px;
            outline: none;
            border: none;
        }
        form h3{
            font-size: 32px;
            font-weight: 500;
            line-height: 42px;
            text-align: center;
        }

        label{
            display: block;
            margin-top: 15px;
            font-size: 16px;
            font-weight: 500;
        }
        input{
            display: block;
            height: 50px;
            width: 100%;
            background-color: rgba(255,255,255,0.07);
            border-radius: 3px;
            padding: 0 10px;
            margin-top: 8px;
            font-size: 14px;
            font-weight: 300;
        }
        select {
            display: block;
            height: 50px;
            width: 100%;
            background-color: rgba(255,255,255,0.07);
            border-radius: 3px;
            padding: 0 10px;
            margin-top: 8px;
            font-size: 14px;
            font-weight: 300;
        }
        input[type=radio] , [type=checkbox] {
            appearance: none;

            border-radius: 100%;
            width: 10px;
            height: 20px;

            border: 2px solid #999;
            transition: 0.2s all linear;
            margin-right: 20px;



        }

        input[type=radio]:checked {
            border: 6px solid black;
        }
        input[type=checkbox]:checked {
            border: 6px solid black;
        }


        ::placeholder{
            color: #e5e5e5;
        }
        button{
            margin-top: 50px;
            width: 100%;
            background-color: #ffffff;
            color: #080710;
            padding: 15px 0;
            font-size: 18px;
            font-weight: 600;
            border-radius: 5px;
            cursor: pointer;
        }

        textarea {
            display: block;
            height: 50px;
            width: 100%;
            background-color: rgba(255,255,255,0.07);
            border-radius: 3px;
            padding: 0 10px;
            margin-top: 8px;
            font-size: 14px;
            font-weight: 300;
        }
        .row {
            display: flex;
            flex-direction: row;
            vertical-align: middle;
            align-items: center;
        }

    </style>
    <title>Form</title>
</head>
<body>
<div class="background">
    <div class="shape"></div>
    <div class="shape"></div>
</div>
<form method="post" action="${pageContext.request.contextPath}/add" >
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
    <div class="row">
        <input type="radio" id="male" name="gender" value="male" required>
        <label for="male">Мужской</label><br>
    </div>
    <div class="row">
        <input type="radio" id="female" name="gender" value="female">
        <label for="female">Женский</label><br><br>
    </div>


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

    <label for="bio">Биография:</label><br>
    <textarea id="bio" name="bio" rows="4" cols="50" required></textarea><br><br>

    <label for="contract_agreement">С контрактом ознакомлен(а):</label>
    <input type="checkbox" id="contract_agreement" name="contract_agreement" required><br><br>

    <input type="submit" value="Сохранить">

</form>
</body>
</html>