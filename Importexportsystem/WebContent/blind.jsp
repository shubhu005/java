<%-- Ensure this directive is at the top of your JSP file --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Text Reader for Disabled Persons</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            background-color: #1a202c; /* Dark Background */
            color: white;
        }

        .main-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            width: 90%;
            margin: 20px;
            max-width: 1200px;
        }

        .container {
            width: 100%;
            padding: 20px;
            background-color: #2d3748; /* Gray Background */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        .content-pair {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
            width: 100%;
            margin-bottom: 20px;
            padding: 20px;
            background-color: #2d3748;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .text-container {
            width: 100%;
        }

        textarea {
            width: 100%;
            padding: 15px;
            resize: none;
            border-radius: 8px;
            border: 1px solid #4a5568;
            background-color: #2d3748;
            color: white;
            font-size: 16px;
            height: 200px;
        }

        .controls {
            display: flex;
            justify-content: center;
            margin-top: 10px;
        }

        button {
            background-color: #ed8936;
            color: white;
            border: none;
            padding: 10px 20px;
            margin: 5px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #dd6b20;
        }

        .test-container {
            margin-top: 20px;
        }

        .test-button {
            font-size: 18px;
            padding: 12px 24px;
        }
    </style>
</head>
<body>

<div class="main-container">
    <div class="container">
        <h1>Float to Long Casting</h1>

        <% 
            float originalFloat = 12345.679f;
            long castedLong = (long) originalFloat;

            float largeFloat = 9.223372E18f; 
            long largeCastedLong = (long) largeFloat;

            float extremeLargeFloat = 1.0E20f; 
            long extremeCastedLong = (long) extremeLargeFloat;

            float nanFloat = Float.NaN;
            long nanCastedLong = (long) nanFloat;

            float positiveInfinity = Float.POSITIVE_INFINITY;
            long positiveInfinityCastedLong = (long) positiveInfinity;
        %>

        <p>Original float: <%= originalFloat %></p>
        <p>After casting to long: <%= castedLong %></p>

        <p>Large float: <%= largeFloat %></p>
        <p>After casting to long (possible overflow): <%= largeCastedLong %></p>

        <p>Extremely large float: <%= extremeLargeFloat %></p>
        <p>After casting to long (overflow): <%= extremeCastedLong %></p>

        <p>Float NaN: <%= nanFloat %></p>
        <p>After casting to long: <%= nanCastedLong %></p>

        <p>Float Positive Infinity: <%= positiveInfinity %></p>
        <p>After casting to long: <%= positiveInfinityCastedLong %></p>
    </div>

    <div class="content-pair">
        <div class="text-container">
            <h2>Introduction to Customer Service</h2>
            <%
                String customerServiceText = "Customer service is the assistance and advice provided by a company "
                        + "to those people who buy or use its products or services. Good customer service enhances "
                        + "customer satisfaction, builds brand loyalty, and can lead to repeat business.\n\n"
                        + "Key Principles: Active listening, empathy, patience, clear communication, and problem-solving "
                        + "are fundamental skills in effective customer service.";
            %>
            <textarea id="text-input1" readonly><%= customerServiceText %></textarea>
            <div class="controls">
                <button onclick="startReading('text-input1')">Read</button>
                <button onclick="pauseReading()">Pause</button>
                <button onclick="resumeReading()">Resume</button>
                <button onclick="stopReading()">Stop</button>
            </div>
        </div>
    </div>

    <p id="status"></p>

    <div class="test-container">
        <button class="test-button" onclick="goToTest()">Test Your Knowledge</button>
    </div>
</div>

<script>
    const synth = window.speechSynthesis;
    let isPaused = false; 
    let currentUtterance = null;

    function startReading(textAreaId) {
        stopReading();
        const text = document.getElementById(textAreaId).value;
        if (synth.speaking || text.trim() === "") {
            document.getElementById('status').innerText = "No text available to read.";
            return;
        }
        currentUtterance = new SpeechSynthesisUtterance(text);
        currentUtterance.rate = 1;
        currentUtterance.pitch = 1;
        synth.speak(currentUtterance);

        currentUtterance.onend = () => {
            document.getElementById('status').innerText = "Reading finished.";
        };

        currentUtterance.onerror = (event) => {
            console.error('Speech error: ', event);
            document.getElementById('status').innerText = "An error occurred.";
        };

        document.getElementById('status').innerText = "Reading started...";
    }

    function pauseReading() {
        if (synth.speaking && !isPaused) {
            synth.pause();
            isPaused = true;
            document.getElementById('status').innerText = "Reading paused.";
        }
    }

    function resumeReading() {
        if (isPaused) {
            synth.resume();
            isPaused = false;
            document.getElementById('status').innerText = "Reading resumed.";
        }
    }

    function stopReading() {
        if (synth.speaking) {
            synth.cancel();
            currentUtterance = null;
            isPaused = false;
            document.getElementById('status').innerText = "Reading stopped.";
        }
    }

    function goToTest() {
        window.location.href = "blindgame.jsp"; 
    }
</script>
</body>
</html>
