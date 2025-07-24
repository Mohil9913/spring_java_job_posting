<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="org.mohil.jobapp.model.JobPost" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Job Post Details</title>

    <!-- Bootstrap 5 CSS -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            crossorigin="anonymous"
    />

    <style>
        body {
            background: linear-gradient(135deg, #fffbe7 0%, #fde1c8 100%);
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        /* Navbar Styling */
        .navbar {
            background: linear-gradient(90deg, #ffd966, #fdc68a);
            box-shadow: 0 4px 12px rgba(253, 198, 138, 0.2);
        }
        .navbar-brand {
            font-weight: 800;
            color: #704200;
            letter-spacing: 0.5px;
        }
        .navbar-nav .nav-link {
            color: #834900;
            font-weight: 600;
            transition: color 0.2s;
        }
        .navbar-nav .nav-link:hover, .navbar-nav .nav-link:focus {
            color: #c27c04;
        }

        /* Centered Card Styling */
        .job-details-card {
            border-radius: 1rem;
            border: none;
            background: rgba(255,246,221,0.97);
            box-shadow: 0 12px 30px 0 rgba(234, 147, 17, 0.20), 0 2px 7px 0 rgba(0,0,0,0.08);
            overflow: hidden;
            /* glassmorphism feel */
            backdrop-filter: blur(4px);
        }
        .card-title {
            font-size: 2rem;
            font-weight: 700;
            color: #e58e1b;
            margin-bottom: 0.5rem;
        }
        .card-body {
            padding: 2.2rem 2rem 1.5rem 2rem;
        }
        .card-text strong {
            color: #423202;
        }
        .details-label {
            font-size: 1rem;
            font-weight: 600;
            color: #ad7300;
        }
        .details-list {
            padding-left: 1.2rem;
            margin-bottom: 0;
        }
        .details-list li {
            font-size: 1.05rem;
            color: #6a4300;
        }

        /* Card Footer */
        .card-footer {
            background: linear-gradient(90deg, #ffe6b0 0%, #ffe3c8 100%);
            border: none;
            padding: 0.7rem 2rem;
            color: #c08823;
            font-size: 1rem;
            text-align: right;
        }

        /* Page Title */
        .details-title {
            margin-bottom: 32px;
            margin-top: 15px;
            color: #c47b01;
            font-size: 2.3rem;
            font-weight: 800;
            line-height: 1.2;
            letter-spacing: -0.5px;
            text-shadow: 0 1px 0 #fff3be;
        }

        /* Responsive adjustments */
        @media (max-width: 576px) {
            .card-body { padding: 1.4rem 0.75rem 1.2rem 0.75rem; }
            .details-title { font-size: 1.5rem; margin-bottom: 18px; }
            .card-title { font-size: 1.25rem; }
            .job-details-card { border-radius: 0.8rem; }
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg shadow-sm">
    <div class="container">
        <a class="navbar-brand fs-2" href="#">Mohil Job Portal Web App</a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto fs-5">
                <li class="nav-item mx-2">
                    <a class="nav-link" href="home">Home</a>
                </li>
                <li class="nav-item mx-2">
                    <a class="nav-link" href="viewalljobs">All Jobs</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<%
    JobPost myJobPost = (JobPost) request.getAttribute("jobPost");
%>

<div class="container mt-5 mb-5">
    <div class="row justify-content-center">
        <div class="col-xl-6 col-lg-7 col-md-8">
            <div class="details-title text-center">Job Post Details</div>
            <div class="card job-details-card">
                <div class="card-body">
                    <h5 class="card-title"><%= myJobPost.getPostProfile() %></h5>
                    <p class="card-text">
                        <span class="details-label">Description:</span>
                        <br />
                        <span><%= myJobPost.getPostDesc() %></span>
                    </p>
                    <p class="card-text">
                        <span class="details-label">Experience Required:</span>
                        <br />
                        <span><%= myJobPost.getReqExperience() %> years</span>
                    </p>
                    <p class="card-text mb-0">
                        <span class="details-label">Tech Stack:</span>
                    <ul class="details-list">
                        <% for (String tech : myJobPost.getPostTechStack()) { %>
                        <li><%= tech %></li>
                        <% } %>
                    </ul>
                    </p>
                </div>
                <div class="card-footer">
                    &mdash; Powered by Mohil Job Portal
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>
</body>
</html>
