<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employer Profile Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

    <style>
        /* General Styling */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #111827;
            color: #f3f4f6;
          
    background-color: #111827; /* bg-gray-900 */

            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .custom-card {
    background-color: #1f2937; /* bg-gray-800 */
    padding: 16px;
    border-radius: 10px;
    color: white; /* Text color for contrast */
}
        

        /* Navbar */
        .nav-link:hover {
            color: #f97316;
        }

        /* Profile Section */
        .profile-wrapper {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 50px 20px;
        }

        .profile-container {
            width: 90%;
            max-width: 1200px;
            padding: 50px;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.1);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            backdrop-filter: blur(15px);
            text-align: center;
            position: relative;
        }

        .profile-img-container {
            position: absolute;
            top: -80px;
            left: 50%;
            transform: translateX(-50%);
            background-color: #ffffff;
            padding: 10px;
            border-radius: 50%;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .profile-img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            border: 4px solid rgba(255, 255, 255, 0.3);
        }

        .profile-details {
            margin-top: 80px;
            padding: 40px;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(15px);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        .profile-details h2 {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .profile-details p {
            font-size: 1.8rem;
            font-weight: 500;
            margin: 10px 0;
        }

        /* Buttons */
        .btn {
            padding: 15px 30px;
            font-size: 1.5rem;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            margin: 10px;
            transition: 0.3s;
        }

        .update-btn {
            background-color: #3b82f6;
            color: white;
        }

        .delete-btn {
            background-color: #ef4444;
            color: white;
        }

        .btn:hover {
            opacity: 0.8;
        }

        /* Sticky Footer */
        .footer {
            background-color: #1f2937;
            color: #9ca3af;
            padding: 20px;
            text-align: center;
            margin-top: auto;
            font-size: 1.2rem;
        }

        .footer a {
            color: #f97316;
            margin: 0 15px;
            transition: 0.3s;
            font-size: 1.5rem;
        }

        .footer a:hover {
            color: #fb923c;
        }
        .profile-img-container {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 83px; /* Adjust this as needed */
}

.profile-img {
    width: 100px; /* Adjust size */
    height: 100px;
    border-radius: 50%;
    object-fit: cover;
    border: 3px solid #fff; /* Optional: Adds a border */
}
        
    </style>
</head>
<body>

    <!-- Navigation -->
    <nav class="bg-gray-800 shadow-lg">
        <div class="max-w-7xl mx-auto px-4">
            <div class="flex justify-between h-16 items-center">
                <a href="#" class="text-3xl font-bold text-orange-500">DigiVidya</a>
                <div class="hidden md:flex items-center space-x-6">
                    <a href="#" class="nav-link text-white text-lg px-4 py-2">Courses</a>
                    <a href="#" class="nav-link text-white text-lg px-4 py-2">Jobs</a>
                    <a href="#" class="nav-link text-white text-lg px-4 py-2">Mentorship</a>
                    <a href="about.html" class="nav-link text-white text-lg px-4 py-2">About Us</a>
                    <a href="Contact.html" class="nav-link text-white text-lg px-4 py-2">Contact Us</a>
                    <button id="loginBtn" class="bg-orange-500 text-lg p-3 rounded-lg shadow-lg hover:bg-orange-600 transition-all cursor-pointer">Login</button>
                </div>
                <button id="mobileMenuBtn" class="md:hidden text-white">
                    <i class="bi bi-list text-3xl"></i>
                </button>
            </div>
        </div>
    </nav>

    <!-- Employer Profile -->
    <div class="profile-wrapper">
        <div class="profile-container">
            <!-- Profile Image -->
            <div class="profile-img-container">
                <img class="profile-img" src="https://tse4.mm.bing.net/th?id=OIP.hGSCbXlcOjL_9mmzerqAbQHaHa&pid=Api&P=0&h=180" alt="Profile Photo">
            </div>
            
            <div class="profile-details">
                <h2><i class="bi bi-person-circle"></i> Name: John Doe</h2>
                <p><i class="bi bi-lightbulb"></i> Expertise: Software Engineering</p>
                <p><i class="bi bi-building"></i> Company: Tech Innovations</p>
                <p><i class="bi bi-briefcase"></i> Role: Senior Developer</p>
            </div>

            <button class="btn update-btn"><i class="bi bi-pencil-square"></i> Update</button>
            <button class="btn delete-btn"><i class="bi bi-trash"></i> Delete</button>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2025 DigiVidya. All rights reserved.</p>
        <div>
            <a href="#"><i class="bi bi-facebook"></i></a>
            <a href="#"><i class="bi bi-twitter"></i></a>
            <a href="#"><i class="bi bi-instagram"></i></a>
            <a href="#"><i class="bi bi-linkedin"></i></a>
        </div>
    </footer>

</body>
</html>