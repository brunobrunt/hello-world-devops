<!DOCTYPE html>
<html>
<head>
    <title>Phalangestech.ca Test Home Page</title>
    <style>
        body {
            text-align: center;
            background-color: #7CFC00;
            font-weight: 600;
            font-size: 18px;
            font-family: "Helvetica", "Arial", sans-serif;
            color: black;
            margin: 0;
            padding: 20px;
        }
        marquee img {
            width: 200px;
            filter: drop-shadow(3px 3px 5px rgba(0, 0, 0, 0.5));
        }
        h1 {
            font-size: 36px;
            text-shadow: 3px 3px 6px rgba(0, 0, 0, 0.7);
            animation: glow 2s infinite alternate;
        }
        h2 {
            font-size: 26px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.6);
        }
        p {
            font-size: 20px;
            margin: 15px auto;
            max-width: 800px;
        }
        #date {
            font-size: 22px;
            margin-top: 20px;
            font-weight: bold;
            background-color: rgba(0, 0, 0, 0.2);
            display: inline-block;
            padding: 10px 20px;
            border-radius: 10px;
        }
        @keyframes glow {
            from {
                text-shadow: 3px 3px 6px rgba(255, 255, 255, 0.5);
            }
            to {
                text-shadow: 5px 5px 10px rgba(255, 255, 255, 0.9);
            }
        }
    </style>
</head>
<body>
    <marquee><img src="https://www.docker.com/wp-content/uploads/2022/03/Moby-logo.png" alt="Docker Logo"></marquee>
    <h1>Use Jenkins CI to build an image onto the Tomcat server.</h1>
    <h2>This action is performed by executing the Maven Build Tool on Jenkins and deployed to the Tomcat server.</h2>
    <p>Jenkins is an open-source automation server that helps developers build, test, and deploy applications efficiently. By integrating Jenkins with Docker, we can automate the creation of containerized applications, ensuring consistency across different environments.</p>
    <p>Tomcat is a widely used application server for running Java-based applications. With Jenkins, we can streamline the process of deploying new builds directly onto a Tomcat server, reducing manual effort and increasing reliability.</p>
    <p>By leveraging CI/CD pipelines, teams can ensure continuous integration and deployment, leading to faster releases and improved software quality.</p>
    <div id="date"></div>
    <script>
        document.getElementById("date").innerHTML = new Date().toLocaleString();
    </script>
</body>
</html>

