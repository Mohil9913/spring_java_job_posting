<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Job Post List</title>

    <!-- Bootstrap CSS -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
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

        .navbar-nav .nav-link:hover,
        .navbar-nav .nav-link:focus {
            color: #c27c04;
        }

        /* Page Title */
        h2.text-center {
            margin-top: 2rem;
            margin-bottom: 3rem;
            color: #c47b01;
            font-size: 2.5rem;
            font-weight: 800;
            letter-spacing: -0.5px;
            text-shadow: 0 1px 0 #fff3be;
        }

        /* Card Grid */
        .row.row-cols-2 {
            gap: 2rem 1.5rem;
            /* creates consistent spacing between cards */
        }

        /* Individual Job Cards */
        .card.job-post-card {
            border-radius: 1rem;
            background: #3a3a3a;
            color: white;
            box-shadow:
                    0 12px 30px rgba(93, 64, 0, 0.3),
                    0 2px 8px rgba(0, 0, 0, 0.25);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card.job-post-card:hover {
            transform: translateY(-5px);
            box-shadow:
                    0 20px 45px rgba(93, 64, 0, 0.5),
                    0 5px 15px rgba(0, 0, 0, 0.35);
        }

        /* Card Body */
        .card-body {
            padding: 1.75rem 1.5rem;
        }

        .card-title {
            font-weight: 700;
            font-size: 1.5rem;
            color: #ffb84d;
            margin-bottom: 0.8rem;
        }

        .card-text strong {
            color: #f5d791;
        }

        .card-text p,
        .card-text ul {
            font-size: 1rem;
            line-height: 1.4;
            color: #eee9d9;
            margin-bottom: 0.6rem;
        }

        /* Tech stack list */
        .card-text ul {
            padding-left: 1.2rem;
            list-style-type: disc;
            max-height: 120px;
            overflow-y: auto;
        }
        .card-text ul li {
            margin-bottom: 0.25rem;
        }

        /* Card footer */
        .card-footer {
            background: transparent;
            border-top: none;
            height: 10px; /* minimal footer height, can add content if needed */
        }

        /* Responsive adjustments */
        @media (max-width: 767.98px) {
            .row.row-cols-2 {
                row-gap: 1.5rem;
                column-gap: 1rem;
            }
        }

        @media (max-width: 575.98px) {
            .row.row-cols-2 {
                grid-template-columns: 1fr !important;
                gap: 1.5rem 0 !important;
            }
        }
    </style>
</head>

<body>

<nav class="navbar navbar-expand-lg shadow-sm">
    <div class="container">
        <a class="navbar-brand fs-2" href="#">Mohil Job Portal Web App</a>

        <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto fs-5">
                <li class="nav-item mx-2"><a class="nav-link" href="home">Home</a></li>
                <li class="nav-item mx-2"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <h2 class="text-center">Job Post List</h2>

    <div class="row row-cols-2">
        <c:forEach var="jobPost" items="${jobPosts}">
            <div class="col">
                <div class="card job-post-card">
                    <div class="card-body">
                        <h5 class="card-title">${jobPost.postProfile}</h5>
                        <p class="card-text"><strong>Description:</strong> ${jobPost.postDesc}</p>
                        <p class="card-text"><strong>Experience Required:</strong> ${jobPost.reqExperience} years</p>
                        <p class="card-text">
                            <strong>Tech Stack:</strong>
                        <ul>
                            <c:forEach var="tech" items="${jobPost.postTechStack}">
                                <li>${tech}</li>
                            </c:forEach>
                        </ul>
                        </p>
                    </div>
                    <div class="card-footer">
                        <!-- Optional footer content -->
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"
></script>

</body>
</html>
