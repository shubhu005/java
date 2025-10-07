<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Service Quiz</title>
    <style>
        body {
            font-family: "Poppins", Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background: linear-gradient(to right, #1a1a1a, #292929);
            color: white;
            overflow: hidden;
            text-align: center;
        }

        .quiz-container {
            width: 90%;
            max-width: 600px;
            padding: 30px;
            background: rgba(51, 51, 51, 0.9);
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(255, 165, 0, 0.3);
        }

        button {
            background: linear-gradient(45deg, #ff8c00, #ff4500);
            color: white;
            border: none;
            padding: 12px 24px;
            margin: 10px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            transition: background 0.3s, transform 0.2s;
        }

        button:hover {
            background: linear-gradient(45deg, #ff4500, #ff8c00);
            transform: scale(1.05);
        }

        .hidden {
            display: none;
        }
    </style>
</head>
<body>

    <div class="main-container">
        <h1>Customer Service Quiz</h1>
        <p>Listen to the question and answer by speaking.</p>

        <div class="quiz-container">
            <h2 id="question-text"></h2>
            <p>Say the correct option (A, B, C, or D).</p>
            <button onclick="startQuiz()">Start Quiz</button>
            <p id="result"></p>
        </div>

        <button id="certificate-btn" class="hidden" onclick="generateCertificate()">Download Certificate</button>
        <canvas id="certificate" class="hidden"></canvas>
    </div>

    <script>
    
        const questions = [
            { question: "What is the key to good customer service?", options: ["A. Ignoring complaints", "B. Active listening", "C. Speaking loudly", "D. Selling more products"], answer: "B" },
            { question: "What should you do when handling a customer complaint?", options: ["A. Argue with the customer", "B. Listen actively", "C. Ignore them", "D. Talk over them"], answer: "B" },
            { question: "What is an essential quality of a good customer service representative?", options: ["A. Impatience", "B. Empathy", "C. Rudeness", "D. Disinterest"], answer: "B" },
            { question: "How should you handle an angry customer?", options: ["A. Yell back", "B. Stay calm and listen", "C. Hang up", "D. Ignore them"], answer: "B" },
            { question: "What does 'going the extra mile' mean in customer service?", options: ["A. Doing just enough", "B. Exceeding customer expectations", "C. Avoiding extra work", "D. Refusing requests"], answer: "B" },
            { question: "Why is customer feedback important?", options: ["A. It helps improve service", "B. It has no impact", "C. It is unnecessary", "D. It should be ignored"], answer: "A" },
            { question: "What should you do if you don’t know the answer to a customer’s question?", options: ["A. Guess", "B. Make up an answer", "C. Admit it and find the correct answer", "D. Ignore the question"], answer: "C" },
            { question: "What is the best way to end a customer service call?", options: ["A. Hang up immediately", "B. Thank the customer and ask if they need more help", "C. Ignore them", "D. Argue"], answer: "B" }
        ];

        let currentQuestion = 0;
        let score = 0;

        function startQuiz() {
            currentQuestion = 0;
            score = 0;
            askQuestion();
        }

        function askQuestion() {
            if (currentQuestion < questions.length) {
                const q = questions[currentQuestion];
                document.getElementById("question-text").innerText = q.question + "\n" + q.options.join("\n");

                speakText(q.question + " " + q.options.join(", "), function () {
                    startListening();
                });
            } else {
                endQuiz();
            }
        }

        function startListening() {
            const recognition = new (window.SpeechRecognition || window.webkitSpeechRecognition)();
            recognition.lang = "en-US";
            recognition.start();

            recognition.onresult = function (event) {
                const speechResult = event.results[0][0].transcript.toUpperCase().trim();
                checkAnswer(speechResult);
            };

            recognition.onerror = function () {
                document.getElementById("result").innerText = "Could not recognize voice, try again.";
                speakText("Could not recognize voice. Please try again.");
            };
        }

        function checkAnswer(userAnswer) {
            const correctAnswer = questions[currentQuestion].answer;
            let resultText = "";

            if (userAnswer.includes(correctAnswer)) {
                score++;
                resultText = "Correct!";
            } else {
                resultText = "Wrong answer! The correct answer was " + correctAnswer;
            }

            document.getElementById("result").innerText = resultText;
            speakText(resultText, function () {
                currentQuestion++;
                setTimeout(askQuestion, 2000);
            });
        }

        function endQuiz() {
            const finalMessage = `Quiz Completed! Your score is ${score} out of ${questions.length}`;
            document.getElementById("question-text").innerText = finalMessage;
            document.getElementById("certificate-btn").classList.remove("hidden");
            speakText(finalMessage);
        }

        function generateCertificate() {
            const canvas = document.getElementById("certificate");
            const ctx = canvas.getContext("2d");
            canvas.width = 800;
            canvas.height = 500;

            ctx.fillStyle = "#fff";
            ctx.fillRect(0, 0, canvas.width, canvas.height);
            ctx.fillStyle = "#333";
            ctx.font = "30px Arial";
            ctx.fillText("Certificate of Completion", 250, 100);
            ctx.font = "20px Arial";
            ctx.fillText("This is to certify that you have successfully completed", 200, 180);
            ctx.font = "bold 24px Arial";
            ctx.fillText("Customer Service Quiz", 280, 220);
            ctx.font = "20px Arial";
            ctx.fillText(`Score: ${score} out of ${questions.length}`, 320, 280);
            ctx.fillText("Congratulations!", 350, 340);
            ctx.fillText("Date: " + new Date().toLocaleDateString(), 320, 380);

            const link = document.createElement("a");
            link.download = "certificate.png";
            link.href = canvas.toDataURL();
            link.click();
        }

        function speakText(text, callback = null) {
            const speech = new SpeechSynthesisUtterance(text);
            speech.lang = "en-US";
            speech.onend = function () {
                if (callback) callback();
            };
            window.speechSynthesis.speak(speech);
        }
        function startListening() {
            if (!('webkitSpeechRecognition' in window || 'SpeechRecognition' in window)) {
                alert("Speech Recognition is not supported in this browser. Try using Google Chrome.");
                return;
            }

            const recognition = new (window.SpeechRecognition || window.webkitSpeechRecognition)();
            recognition.lang = "en-US";
            recognition.interimResults = false;
            recognition.maxAlternatives = 1;
            recognition.continuous = true; // Keep listening even after speech ends

            recognition.start();
            console.log("Listening... Speak now!");

            recognition.onstart = function () {
                document.getElementById("result").innerText = "Listening... Please speak!";
            };

            recognition.onresult = function (event) {
                let speechResult = event.results[0][0].transcript.toUpperCase().trim();
                console.log("Recognized Speech: ", speechResult);
                checkAnswer(speechResult);
            };

            recognition.onspeechend = function () {
                console.log("Speech ended");
                document.getElementById("result").innerText = "Processing...";
            };

            recognition.onerror = function (event) {
                console.error("Speech Recognition Error: ", event.error);
                let errorMessage = "";

                if (event.error === "no-speech") {
                    errorMessage = "No speech detected. Please try again.";
                } else if (event.error === "audio-capture") {
                    errorMessage = "Microphone not detected. Check your mic settings.";
                } else if (event.error === "not-allowed") {
                    errorMessage = "Microphone access denied. Allow microphone permissions.";
                } else {
                    errorMessage = "An unknown error occurred. Try again.";
                }

                document.getElementById("result").innerText = "Error: " + errorMessage;
                speakText(errorMessage);
                setTimeout(startListening, 1000); 
            };

            recognition.onnomatch = function () {
                document.getElementById("result").innerText = "No voice detected. Try again!";
                speakText("I didn't catch that. Please try again.");
                setTimeout(startListening, 1000);
            };
        }
        recognition.onerror = function (event) {
            console.error("Speech Recognition Error: ", event);
            let errorMessage = `Error: ${event.error}`;

            if (event.error === "no-speech") {
                errorMessage = "No speech detected. Please try again.";
            } else if (event.error === "audio-capture") {
                errorMessage = "Microphone not detected. Check your mic settings.";
            } else if (event.error === "not-allowed") {
                errorMessage = "Microphone access denied. Allow microphone permissions.";
            } else {
                errorMessage = `An unknown error occurred: ${event.error}. Try again.`;
            }

            document.getElementById("result").innerText = errorMessage;
            speakText(errorMessage);
            setTimeout(startListening, 1000);
        };

    </script>

</body>
</html>