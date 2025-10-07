<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Test Your Knowledge</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #1a202c;
            color: white;
        }

        .container {
            width: 90%;
            max-width: 600px;
            background-color: #2d3748;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        h1 {
            margin-bottom: 20px;
        }

        button {
            background-color: #ed8936;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-size: 16px;
        }

        button:hover {
            background-color: #dd6b20;
        }

        .question {
            margin-bottom: 15px;
            font-size: 18px;
        }

        .options {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .option {
            margin: 5px 0;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Test Your Knowledge</h1>
    
    <p class="question">What is the key principle of customer service?</p>

    <div class="options">
        <button class="option" onclick="checkAnswer(true)">Empathy</button>
        <button class="option" onclick="checkAnswer(false)">Ignoring customers</button>
        <button class="option" onclick="checkAnswer(false)">Raising voice</button>
        <button class="option" onclick="checkAnswer(false)">No communication</button>
    </div>

    <p id="feedback"></p>

    <button onclick="goBack()">Go Back</button>
</div>

<script>
    function checkAnswer(isCorrect) {
        let feedback = document.getElementById("feedback");
        if (isCorrect) {
            feedback.innerText = "Correct! Empathy is key to customer service.";
            feedback.style.color = "lightgreen";
        } else {
            feedback.innerText = "Incorrect! Try again.";
            feedback.style.color = "red";
        }
    }

    function goBack() {
        window.location.href = "index.jsp"; // Change to your home page
    }
</script>

</body>
</html>
