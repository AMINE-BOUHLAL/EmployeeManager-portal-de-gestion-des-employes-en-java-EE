<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Employee</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa; /* Light background color */
            font-family: 'Arial', sans-serif; /* Clean font */
        }

        .container {
            background-color: #ffffff; /* White background for the form */
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow around the form */
            max-width: 600px;
            margin-top: 50px;
        }

        h1 {
            color: #343a40; /* Darker text for the title */
            font-size: 2.5rem; /* Large title size */
            text-align: center;
            margin-bottom: 30px;
            font-weight: bold;
        }

        label {
            color: #495057; /* Slightly darker label color */
            font-weight: bold;
        }

        .form-control {
            border: 2px solid #ccc; /* Light grey border */
            border-radius: 5px;
            padding: 12px;
            font-size: 1rem;
        }

        .form-control:focus {
            border-color: #007bff; /* Blue border on focus */
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); /* Blue glow on focus */
        }

        .form-group {
            margin-bottom: 20px;
        }

        .btn {
            background-color: #007bff; /* Blue button background */
            color: white;
            font-size: 1.2rem;
            padding: 10px 20px;
            border-radius: 5px;
            width: 100%; /* Full-width button */
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3; /* Darker blue on hover */
            transition: background-color 0.3s ease;
        }

        .btn:active {
            background-color: #004085; /* Even darker on click */
        }

        .form-group input {
            transition: border-color 0.3s ease, box-shadow 0.3s ease; /* Smooth transition for inputs */
        }

        .container h1 {
            color: #0069d9;
            text-transform: uppercase;
        }

        /* Adding responsive design */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            .btn {
                font-size: 1rem;
                padding: 8px 16px;
            }
        }
    </style>

</head>
<body>
<div class="container mt-5">
    <h1>Create Employee</h1>
    <form action="create" method="post">
        <div class="form-group">
            <label for="name">Nom:</label>
            <input type="text" class="form-control" name="name" id="name">
        </div>
        <div class="form-group">
            <label for="prenom">Prenom:</label>
            <input type="text" class="form-control" name="prenom" id="prenom">
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="text" class="form-control" name="email" id="email">
        </div>
        <div class="form-group">
            <label for="poste">Poste:</label>
            <input type="text" class="form-control" name="poste" id="poste">
        </div>
        <div class="form-group">
            <label for="salaire">Salaire:</label>
            <input type="text" class="form-control" name="salaire" id="salaire">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>
