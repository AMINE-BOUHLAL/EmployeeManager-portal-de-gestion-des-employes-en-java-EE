<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee List</title>
    <!-- Add Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f4f7fc; /* Light background for the page */
            font-family: 'Arial', sans-serif;
        }

        .container {
            background-color: #ffffff; /* White background for the container */
            border-radius: 10px;
            padding: 40px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1); /* Soft shadow around the container */
            margin-top: 50px;
        }

        h1 {
            color: #0056b3; /* Dark blue for the title */
            font-size: 2.8rem;
            text-align: center;
            margin-bottom: 30px;
            font-weight: 700;
        }

        table {
            width: 100%; /* Full width for the table */
            border-collapse: collapse; /* For cleaner table borders */
        }

        th, td {
            padding: 12px;
            text-align: center;
            font-size: 1.1rem;
            border: 1px solid #ddd; /* Light grey borders for the table */
        }

        th {
            background-color: #007bff; /* Blue background for table headers */
            color: white; /* White text for the headers */
        }

        tr:nth-child(odd) {
            background-color: #f9f9f9; /* Light grey for odd rows */
        }

        tr:nth-child(even) {
            background-color: #f1f8ff; /* Light blue for even rows */
        }

        .btn {
            font-size: 1rem;
            padding: 8px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-warning {
            background-color: #ffcc00; /* Yellow for edit button */
            color: white;
        }

        .btn-warning:hover {
            background-color: #e6b800; /* Darker yellow on hover */
        }

        .btn-danger {
            background-color: #dc3545; /* Red for delete button */
            color: white;
        }

        .btn-danger:hover {
            background-color: #c82333; /* Darker red on hover */
        }

        .btn-success {
            background-color: #28a745; /* Green for Add button */
            color: white;
        }

        .btn-success:hover {
            background-color: #218838; /* Darker green on hover */
        }

        .btn-sm {
            font-size: 0.9rem;
            padding: 6px 12px;
        }

        .form-inline {
            display: inline;
        }

        /* Adding responsive design */
        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            table {
                font-size: 0.9rem;
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
    <h1>Employee List</h1>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Prenom</th>
            <th>Email</th>
            <th>Poste</th>
            <th>Salaire</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="person" items="${ListP}">
            <tr>
                <td>${person.id}</td>
                <td>${person.nom}</td>
                <td>${person.prenom}</td>
                <td>${person.email}</td>
                <td>${person.poste}</td>
                <td>${person.salaire}</td>
                <td>
                    <a href="update?id=${person.id}" class="btn btn-warning btn-sm">Edit</a>
                    <form action="delete" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="${person.id}">
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="create" class="btn btn-success">Add New Employee</a>
</div>
</body>
</html>
