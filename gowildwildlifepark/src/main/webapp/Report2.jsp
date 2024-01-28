<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.csm.dao.AnimalManage" %>
<%@ page import="com.csm.entity.Animal" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Report 2</title>
    <style>
        body {
            background-image: url(bgcc1.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }

        table, td, th {
            border: 1px solid black;
        }

        table {
            border-collapse: collapse;
            width: 80%;
        }

        th, td {
            height: 30px;
        }
    </style>
</head>
<body>
    <% 
        try {
            AnimalManage aMgr = new AnimalManage();
            ArrayList<Animal> animalList = aMgr.fetchAnimalGroupByKeeper();
    %>
    <center>
        <div>
            <h1>Report 2</h1>
            <table>
                <tr>
                    <th>Keeper Name</th>
                    <th>Total Animal</th>
                </tr>
                <%
                    for (Animal animal : animalList) {
                %>
                <tr>
                    <td><%= animal.getKeeper_name() %></td>
                    <td><%= animal.getTotalAnimal() %> </td>
                </tr>
                <%
                    }
                %>
            </table>
        </div>
    </center>
    <%
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    %>
</body>
</html>
