<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Mohil Job Portal</title>

    <!-- Bootstrap CSS -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
    />

    <style>
        body {
            background: #f9fafb;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Navbar styling */
        .navbar {
            background: linear-gradient(90deg, #f6d365 0%, #fda085 100%);
            box-shadow: 0 4px 8px rgba(253, 160, 133, 0.4);
        }
        .navbar-brand {
            font-weight: 700;
            color: #6b2d07;
            text-shadow: 0 1px 2px rgba(255, 255, 255, 0.7);
            letter-spacing: 1px;
        }
        .navbar-nav .nav-link {
            color: #5a2000;
            font-weight: 600;
            transition: color 0.3s ease;
        }
        .navbar-nav .nav-link:hover,
        .navbar-nav .nav-link:focus {
            color: #3e1500;
            text-decoration: underline;
        }

        /* Container and cards */
        .container.mt-5 {
            max-width: 720px;
        }
        .card {
            border-radius: 15px;
            border: none;
            box-shadow: 0 8px 20px rgba(253, 160, 133, 0.15);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            box-shadow: 0 12px 30px rgba(253, 160, 133, 0.25);
            transform: translateY(-5px);
        }
        .card-body {
            padding: 2rem;
        }

        /* Buttons */
        .btn-primary {
            background-color: #e85d04;
            border: none;
            font-weight: 600;
            font-size: 1.15rem;
            padding: 0.75rem 2.5rem;
            border-radius: 50px;
            box-shadow: 0 5px 15px rgba(232, 93, 4, 0.4);
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }
        .btn-primary:hover,
        .btn-primary:focus {
            background-color: #d9480f;
            box-shadow: 0 8px 24px rgba(217, 72, 15, 0.6);
            outline: none;
        }

        /* Responsive margin for smaller screens */
        @media (max-width: 576px) {
            .card-body {
                padding: 1.5rem;
            }
            .btn-primary {
                width: 100%;
                padding: 0.75rem 1rem;
                font-size: 1.1rem;
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
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav"
                aria-controls="navbarNav"
                aria-expanded="false"
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

<div class="container mt-5">
    <div class="row g-4 justify-content-center">
        <!-- Card 1 -->
        <div class="col-md-6">
            <div class="card">
                <div class="card-body text-center">
                    <a href="/viewalljobs" class="btn btn-primary" role="button" aria-label="View all jobs">View All Jobs</a>
                </div>
            </div>
        </div>

        <!-- Card 2 -->
        <div class="col-md-6">
            <div class="card">
                <div class="card-body text-center">
                    <a href="/addjob" class="btn btn-primary" role="button" aria-label="Add a new job">Add Job</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS Bundle -->
<script
        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous">
</script>
</body>
</html>
