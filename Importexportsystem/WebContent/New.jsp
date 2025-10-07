<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>DigiVidya - AI-Powered Inclusive Learning Platform</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background-color: #121212;
            color: white;
        }
        .feature-card:hover {
            transform: translateY(-5px);
            transition: all 0.3s ease;
        }
        .nav-link:hover {
            color: #ff7b00;
        }
        .hero-section {
            position: relative;
            width: 100%;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background-image: url('https://cybercraftinc.com/wp-content/uploads/2022/03/how-to-create-an-e-learning-website_cover.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }
        .hero-overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
        }
        .hero-content {
            position: relative;
            z-index: 10;
            background: rgba(0, 0, 0, 0.6);
            padding: 2rem;
            border-radius: 10px;
        }
    </style>
</head>
<body class="bg-gray-900">
    <!-- Navigation -->
    <nav class="bg-gray-800 shadow-lg">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex justify-between h-16 items-center">
                <a href="#" class="text-2xl font-bold text-orange-500">DigiVidya</a>
                <div class="hidden md:flex items-center space-x-6">
                    <a href="#" class="nav-link text-white px-3 py-2">Courses</a>
                    <a href="#" class="nav-link text-white px-3 py-2">Jobs</a>
                    <a href="#" class="nav-link text-white px-3 py-2">Mentorship</a>
                    <a href="about.jsp" class="nav-link text-white px-3 py-2">About Us</a>
                    <a href="contact.jsp" class="nav-link text-white px-3 py-2">Contact Us</a>
                    <button id="loginBtn" class="bg-orange-500 p-3 rounded-lg shadow-lg hover:bg-orange-600 transition-all cursor-pointer">Login</button>
                </div>
            </div>
        </div>
    </nav>

    <!-- Hero Section with Background Image -->
    <div class="hero-section text-center text-white py-24" id="heroSection">
        <div class="hero-overlay"></div>
        <div class="hero-content">
            <h1 class="text-5xl md:text-7xl font-bold mb-6 bg-gradient-to-r from-orange-500 to-yellow-400 inline-block text-transparent bg-clip-text">Learn, Grow and Succeed</h1>
            <p class="text-xl text-gray-300 mb-8 max-w-3xl mx-auto">AI-Powered inclusive learning platform for everyone</p>
            <div class="flex flex-col md:flex-row justify-center gap-6">
                <button class="bg-orange-500 px-8 py-3 rounded-lg text-lg shadow-lg hover:bg-orange-600 transition-all cursor-pointer">Start Learning</button>
                <button class="bg-transparent border-2 border-orange-500 text-orange-500 px-8 py-3 rounded-lg text-lg hover:bg-orange-600 hover:text-white transition-all cursor-pointer">Find Jobs</button>
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <footer class="bg-gray-800 text-gray-400 py-6 mt-12">
        <div class="max-w-7xl mx-auto px-4 text-center">
            <p>&copy; 2025 DigiVidya. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
