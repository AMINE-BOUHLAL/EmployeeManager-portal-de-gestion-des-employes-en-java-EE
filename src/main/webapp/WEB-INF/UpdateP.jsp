<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Employee</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa; /* Light grey background for the page */
            font-family: 'Arial', sans-serif;
        }

        .container {
            background-color: #ffffff; /* White background for the form */
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1); /* Soft shadow around the form */
            margin-top: 60px;
        }

        h1 {
            color: #007bff; /* Blue color for the title */
            font-size: 2.5rem;
            text-align: center;
            margin-bottom: 30px;
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 25px;
        }

        label {
            font-size: 1.1rem;
            color: #333333;
            font-weight: 600;
        }

        input[type="text"] {
            font-size: 1rem;
            padding: 12px;
            border: 1px solid #ced4da; /* Light grey border */
            border-radius: 5px;
            width: 100%;
            margin-top: 8px;
        }

        input[type="text"]:focus {
            border-color: #007bff; /* Blue border on focus */
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); /* Blue glow on focus */
        }

        .btn {
            font-size: 1rem;
            padding: 12px 30px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-primary {
            background-color: #007bff; /* Blue for Update button */
            color: white;
        }

        .btn-primary:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        .btn-primary:active {
            background-color: #004085; /* Even darker blue when clicked */
        }

        /* Adding responsive design */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            h1 {
                font-size: 2rem;
            }

            .form-group {
                margin-bottom: 20px;
            }

            .btn {
                font-size: 1rem;
                padding: 10px 20px;
            }
        }
    </style>

</head>
<body>
<div class="container mt-5">
    <h1>Update Employee</h1>
    <form action="update" method="post">
        <input type="hidden" name="id" value="${person.id}">
        <div class="form-group">
            <%--@declare id="name"--%><label for="name">Nom:</label>
            <input type="text" class="form-control" name="nom" value="${person.nom}">
        </div>
        <div class="form-group">
            <%--@declare id="prenom"--%><label for="prenom">Prenom:</label>
            <input type="text" class="form-control" name="prenom" value="${person.prenom}">
        </div>
        <div class="form-group">
            <%--@declare id="email"--%><label for="email">Email:</label>
            <input type="text" class="form-control" name="email" value="${person.email}">
        </div>
        <div class="form-group">
            <%--@declare id="poste"--%><label for="poste">Poste:</label>
            <input type="text" class="form-control" name="poste" value="${person.poste}">
        </div>
        <div class="form-group">
            <%--@declare id="salaire"--%><label for="salaire">Salaire:</label>
            <input type="text" class="form-control" name="salaire" value="${person.salaire}">
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>
</body>
</html>
