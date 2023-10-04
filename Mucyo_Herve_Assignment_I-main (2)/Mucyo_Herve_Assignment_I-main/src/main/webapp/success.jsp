<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%-- Check if the userEmail session attribute is not set --%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Admission Dashboard</title>
    <!-- Add Bootstrap CSS link here -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Add FontAwesome CSS link here -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" rel="stylesheet">
    <style>
        /* Custom CSS for sidebar */
        .sidebar {
            height: 100%;
            width: 0;
            position: fixed;
            z-index: 1;
            top: 0;
            left: 0;
            background-color: #111;
            overflow-x: hidden;
            transition: 0.5s;
            padding-top: 60px;
        }

        .sidebar a {
            padding: 8px 8px 8px 32px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
            transition: 0.3s;
        }

        .sidebar a:hover {
            color: #007bff;
        }

        .sidebar .closebtn {
            position: absolute;
            top: 10px;
            right: 25px;
            font-size: 30px;
        }

        .sidebar .logout-link {
            position: absolute;
            bottom: 10px;
            left: 40px; /* Adjust the left position as needed */
            display: flex;
            align-items: center;
        }

        #main {
            transition: margin-left .5s;
            padding: 16px;
        }

        /* Custom CSS for content and footer */
        .content {
            background-color: #f9f9f9;
            padding: 30px; /* Increased padding */
            border-radius: 5px;
            margin-bottom: 20px;
        }

        /* Flexbox to push content to the top */
        .wrapper {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .content-flex {
            flex-grow: 1;
        }

        /* Custom CSS for logout icon */
        .logout-icon {
            font-size: 24px;
            cursor: pointer;
            color: #007bff;
            margin-right: 10px;
        }

        /* Center the form with Bootstrap */
        .center-form {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 80vh;
        }

        /* Apply padding to the form and columns */
        .admission-form {
            padding: 40px; /* Increased padding */
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
            width: 80%; /* Increased width */
        }

        /* Apply padding to the form controls */
        .form-control {
            padding: 15px; /* Increased padding for form controls */
        }
        
        /* Adjust column sizing */
        .col-md-8 {
            flex: 0 0 80%; /* Set column width */
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar" id="mySidebar">
    <h1>Dashboard</h1>
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
    <a href="home.jsp">Home</a>
    <a href="admissionForm.jsp">Admission Form</a>
    <a href="#">Check Status</a>
    <a href="#">Important Dates</a>
    <a href="Login.jsp" class="logout-link" onclick="logout()">
        Logout <i class="fas fa-sign-out-alt logout-icon"></i>
    </a>
</div>

<!-- Page Content -->
<div class="wrapper">
    <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Menu</span>

    <div class="container mt-5 content-flex">
        <div class="content center-form">
            <div class="row">
                <div class="col-md-8 admission-form"> <!-- Increased width -->
                    <h1 class="text-center">Student Admission Form</h1>
                    <form action="submitAdmission" method="post" enctype="multipart/form-data">
                        <!-- Personal Information -->
                        <div class="form-group">
                            <label for="firstName">First Name:</label>
                            <input type="text" id="firstName" name="firstName" required class="form-control">
                        </div>
                        
                        <div class="form-group">
                            <label for="lastName">Last Name:</label>
                            <input type="text" id="lastName" name="lastName" required class="form-control">
                        </div>
                        
                        <div class="form-group">
                            <label for="email">Email:</label>
                            <input type="email" id="email" name="email" required class="form-control">
                        </div>
                        
                        <div class="form-group">
                            <label for="birthdate">Date of Birth:</label>
                            <input type="date" id="birthdate" name="birthdate" required class="form-control">
                        </div>
                        
                        <!-- Academic Information -->
                        <div class="form-group">
                            <label for="studentID">Student ID:</label>
                            <input type="text" id="studentID" name="studentID" required class="form-control">
                        </div>
                        
                        <div class="form-group">
                            <label for="department">Department:</label>
                            <select id="department" name="department" class="form-control">
                                <option value="computer_science">Computer Science</option>
                                <option value="biology">Biology</option>
                                <option value="history">History</option>
                                <!-- Add more department options here -->
                            </select>
                        </div>
                        
                        <div class="form-group">
                            <label for="admissionYear">Admission Year:</label>
                            <input type="number" id="admissionYear" name="admissionYear" required class="form-control">
                        </div>
                        
                        <!-- File Uploads -->
                        <div class="form-group">
                            <label for="passportPicture">Passport Picture (JPG or PNG):</label>
                            <input type="file" id="passportPicture" name="passportPicture" accept=".jpg, .png" required class="form-control">
                        </div>
                        
                        <div class="form-group">
                            <label for="certificates">Certificates (PDF):</label>
                            <input type="file" id="certificates" name="certificates" accept=".pdf" required class="form-control">
                        </div>
                        
                        <div class="form-group">
                            <input type="submit" value="Submit Application" class="btn btn-primary">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="languageSelector">
    <i class="fas fa-language"></i> <!-- The language icon -->
    <select id="languageDropdown">
        <option value="en">English</option>
        <option value="fr">French</option>
        <option value="rw">Kinyarwanda</option>
    </select>
</div>

<!-- Add Bootstrap JS and jQuery scripts here -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- Add FontAwesome JS script here -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/js/all.min.js"></script>
<script>
    function openNav() {
        document.getElementById("mySidebar").style.width = "250px";
        document.getElementById("main").style.marginLeft = "250px";
    }

    function closeNav() {
        document.getElementById("mySidebar").style.width = "0";
        document.getElementById("main").style.marginLeft = "0";
    }

    function logout() {
        // Add your logout logic here
        alert("Logged out!");
    }
    
    // Define language-specific translations
    const translations = {
        en: {
            welcome: "Welcome to the Student Admission Dashboard",
            admissionInfo: "Admission Information",
            firstName: "First Name:",
            lastName: "Last Name:",
            email: "Email:",
            birthdate: "Date of Birth:",
            studentID: "Student ID:",
            department: "Department:",
            admissionYear: "Admission Year:",
            passportPicture: "Passport Picture (JPG or PNG):",
            certificates: "Certificates (PDF):",
            submitBtn: "Submit Application"
        },
        fr: {
            welcome: "Bienvenue dans le tableau de bord d'admission des étudiants",
            admissionInfo: "Informations d'admission",
            firstName: "Prénom :",
            lastName: "Nom de famille :",
            email: "Email :",
            birthdate: "Date de naissance :",
            studentID: "Identifiant étudiant :",
            department: "Département :",
            admissionYear: "Année d'admission :",
            passportPicture: "Photo de passeport (JPG ou PNG) :",
            certificates: "Certificats (PDF) :",
            submitBtn: "Soumettre la demande"
        },
        rw: {
            welcome: "Murakaza neza ku ishusho rya gushira hahise",
            admissionInfo: "Ibiranga bishyiraho",
            firstName: "Izina ry'umuntu w'igihugu :",
            lastName: "Izina ry'umuntu w'umuryango :",
            email: "Imeyili :",
            birthdate: "Itariki y'amavuko :",
            studentID: "Nimero y'umunyeshuri :",
            department: "Ikigo :",
            admissionYear: "Umuhigo wo kwiga :",
            passportPicture: "Igiti cy'ubufoto bwa pasiporo (JPG cyangwa PNG) :",
            certificates: "Ibirimo by'ikigongwe (PDF) :",
            submitBtn: "Emeza uburyohe"
        }
    };

    // Function to change the language
    function changeLanguage(languageCode) {
        // Update content based on the selected language
        document.getElementById("welcomeText").innerText = translations[languageCode].welcome;
        document.getElementById("admissionInfoText").innerText = translations[languageCode].admissionInfo;
        document.getElementById("firstNameLabel").innerText = translations[languageCode].firstName;
        document.getElementById("lastNameLabel").innerText = translations[languageCode].lastName;
        document.getElementById("emailLabel").innerText = translations[languageCode].email;
        document.getElementById("birthdateLabel").innerText = translations[languageCode].birthdate;
        document.getElementById("studentIDLabel").innerText = translations[languageCode].studentID;
        document.getElementById("departmentLabel").innerText = translations[languageCode].department;
        document.getElementById("admissionYearLabel").innerText = translations[languageCode].admissionYear;
        document.getElementById("passportPictureLabel").innerText = translations[languageCode].passportPicture;
        document.getElementById("certificatesLabel").innerText = translations[languageCode].certificates;
        document.getElementById("submitBtn").value = translations[languageCode].submitBtn;
    }

</script>
</body>
</html>
