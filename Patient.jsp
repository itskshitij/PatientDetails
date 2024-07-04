<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import=" java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Details Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .form-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input, .form-group select, .form-group textarea {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        .form-group textarea {
            resize: vertical;
        }
        .form-actions {
            text-align: center;
        }
        .form-actions button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Patient Details Form</h2>
        <form action="jdbcinsert.jsp" method="post">
            <div class="form-group">
                <label for="patient-name">Full Name:</label>
                <input type="text" id="patient-name" name="patient_name" required>
            </div>
            <div class="form-group">
                <label for="patient-age">Age:</label>
                <input type="number" id="patient-age" name="patient_age" required>
            </div>
            <div class="form-group">
                <label for="patient-gender">Gender:</label>
                <input id="patient-gender" name="patient_gender" required>
                    
                
            </div>
            <div class="form-group">
                <label for="patient-contact">Contact Number:</label>
                <input type="tel" id="patient-contact" name="patient_contact" required>
            </div>
            <div class="form-group">
                <label for="patient-email">Email Address:</label>
                <input type="email" id="patient-email" name="patient_email" required>
            </div>
            <div class="form-group">
                <label for="patient-address">Address:</label>
                <textarea id="patient-address" name="patient_address" rows="3" required></textarea>
            </div>
            
            <div class="form-actions">
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>
    
 
</body>
</html>
    