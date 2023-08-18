<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <style>
        /* Define your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #333;
            color: white;
            padding: 10px;
            text-align: right;
            position: fixed;
            top: 0;
            width: 100%;
        }
        .section {
            padding: 50px;
            margin-top: 80px; /* Add some space for the fixed header */
        }
    </style>
    <script>
        // Smooth scrolling functionality
        function scrollToSection(id) {
            var section = document.getElementById(id);
            window.scrollTo({
                top: section.offsetTop,
                behavior: 'smooth'
            });
        }
    </script>
</head>
<body>
    <div class="header">
        <span style="float: left;">My Application</span>
        <span style="float: right;">
            <a href="javascript:void(0);" onclick="scrollToSection('about')">About</a>
            <a href="javascript:void(0);" onclick="scrollToSection('projects')">Projects</a>
                        <a href="javascript:void(0);" onclick="scrollToSection('resume')">Resume</a>
            
            <a href="/login">Login</a>
        </span>
    </div>
    
    <div class="section" id="about">
        <h1>About Page</h1>
        <p>Welcome to the About page! We are passionate about Machine Learning and Artificial Intelligence (AI).</p>
        <p>Machine Learning involves training computers to learn from data and make predictions or decisions. AI goes beyond that, aiming to create machines that can simulate human intelligence and behaviors.</p>
        <p>We explore various algorithms, neural networks, and deep learning techniques to solve complex problems, such as image recognition, natural language processing, and more.</p>
    </div>
    
    <div class="section" id="projects">
        <h1>Projects Page</h1>
        <h2>Neural Networks for Image Classification</h2>
        <p>Aim: To build a deep neural network that can accurately classify images of various objects.</p>
        <p>Conclusion: Our model achieved an accuracy of 95% on the test dataset, demonstrating its ability to recognize objects in images.</p>
        
        <h2>Sentiment Analysis Using Natural Language Processing</h2>
        <p>Aim: To analyze the sentiment (positive, negative, neutral) of text reviews using NLP techniques.</p>
        <p>Conclusion: Our model accurately predicted the sentiment of text reviews with an accuracy of 88%, making it useful for sentiment analysis tasks.</p>
        
        <h2>Reinforcement Learning in Game AI</h2>
        <p>Aim: To train an AI agent to play a game using reinforcement learning techniques.</p>
        <p>Conclusion: After training, our AI agent achieved a high score in the game, showcasing the effectiveness of reinforcement learning algorithms.</p>
    </div>
    
    <div class="section" id="resume">
        <h1>Resume Page</h1>
        <p>Here are some sample resume links:</p>
        <ul>
            <li><a href="/sample-resume1.pdf">Sample Resume 1</a></li>
            <li><a href="/sample-resume2.pdf">Sample Resume 2</a></li>
            <li><a href="/sample-resume3.pdf">Sample Resume 3</a></li>
        </ul>
    </div>
    
    <div class="section">
        <h1>Welcome to My Application!</h1>
        <p>This is the home page of my application. Explore the links in the header to learn more.</p>
    </div>
</body>
</html>
