<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Spring Job Portal - Post Job</title>

    <!-- Bootstrap CSS -->
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
    />

    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .navbar {
            background: linear-gradient(90deg, #f0ad4e, #ec971f);
            box-shadow: 0 3px 10px rgba(236, 151, 31, 0.4);
        }
        .navbar-brand {
            color: #492f0d;
            font-weight: 700;
            font-size: 1.75rem;
            letter-spacing: 1px;
        }
        .navbar-nav .nav-link {
            color: #4b2e0a;
            font-weight: 600;
            transition: color 0.3s ease;
        }
        .navbar-nav .nav-link:hover,
        .navbar-nav .nav-link:focus {
            color: #2b1a06;
            text-decoration: underline;
        }
        /* Card styling */
        .card {
            margin-top: 4rem;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(236, 151, 31, 0.15);
        }
        .card-body {
            padding: 2.5rem 2rem;
        }
        h2.fs-3 {
            font-weight: 700;
            color: #5a3e07;
            margin-bottom: 1.5rem;
            text-align: center;
        }
        /* Form controls */
        .form-label {
            font-weight: 600;
            color: #5a3e07;
        }
        input.form-control,
        textarea.form-control,
        select.form-select {
            border-radius: 8px;
            border: 1.5px solid #e0b75b;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
        }
        input.form-control:focus,
        textarea.form-control:focus,
        select.form-select:focus {
            border-color: #d48806;
            box-shadow: 0 0 8px #d48806aa;
            outline: none;
        }
        select.form-select[multiple] {
            height: 8rem;
        }
        /* Submit Button */
        button.btn-primary {
            background-color: #d48806;
            border: none;
            font-weight: 700;
            font-size: 1.2rem;
            padding: 0.65rem 2rem;
            border-radius: 50px;
            box-shadow: 0 6px 18px rgba(212, 136, 6, 0.4);
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            display: block;
            width: 100%;
            margin-top: 1.5rem;
        }
        button.btn-primary:hover,
        button.btn-primary:focus {
            background-color: #a96300;
            box-shadow: 0 8px 28px rgba(169, 99, 0, 0.7);
            outline: none;
        }
        /* Responsive Form Column */
        @media (max-width: 576px) {
            .card {
                margin-top: 2rem;
            }
            .card-body {
                padding: 1.5rem 1rem;
            }
            button.btn-primary {
                font-size: 1.1rem;
                padding: 0.6rem 1.5rem;
            }
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg shadow-sm">
    <div class="container">
        <a class="navbar-brand" href="#">Mohil Job Portal Web App</a>
        <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav"
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
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card">
                <div class="card-body">

                    <h2 class="fs-3">Post a new Job</h2>

                    <form action="handleForm" method="post" novalidate>
                        <div class="mb-3">
                            <label for="postId" class="form-label">Post ID</label>
                            <input type="text" class="form-control" id="postId" name="postId" required aria-required="true" />
                        </div>

                        <div class="mb-3">
                            <label for="postProfile" class="form-label">Post Profile</label>
                            <input type="text" class="form-control" id="postProfile" name="postProfile" required aria-required="true" />
                        </div>

                        <div class="mb-3">
                            <label for="postDesc" class="form-label">Post Description</label>
                            <textarea class="form-control" id="postDesc" name="postDesc" rows="3" required aria-required="true"></textarea>
                        </div>

                        <div class="mb-3">
                            <label for="reqExperience" class="form-label">Required Experience (years)</label>
                            <input type="number" class="form-control" id="reqExperience" name="reqExperience" min="0" required aria-required="true" />
                        </div>

                        <div class="mb-4">
                            <label for="postTechStack" class="form-label">Tech Stack (Select one or more)</label>
                            <select multiple class="form-select" id="postTechStack" name="postTechStack" required aria-required="true" size="8">
                                <option value="Java">Java</option>
                                <option value="JavaScript">JavaScript</option>
                                <option value="Swift">Swift</option>
                                <option value="TypeScript">TypeScript</option>
                                <option value="Go">Go</option>
                                <option value="Kotlin">Kotlin</option>
                                <option value="Rust">Rust</option>
                                <option value="PHP">PHP</option>
                                <option value="HTML5">HTML5</option>
                                <option value="CSS3">CSS3</option>
                                <option value="GraphQL">GraphQL</option>
                                <option value="Raspberry Pi">Raspberry Pi</option>
                                <option value="Arduino">Arduino</option>
                                <option value="IoT">IoT (Internet of Things)</option>
                                <option value="Apache Kafka">Apache Kafka</option>
                                <option value="Elasticsearch">Elasticsearch</option>
                                <option value="Unity">Unity</option>
                                <option value="Game Development">Game Development</option>
                                <option value="Vue.js">Vue.js</option>
                                <option value="Angular">Angular</option>
                                <option value="React Native">React Native</option>
                                <option value="Flutter">Flutter</option>
                                <option value="Node.js">Node.js</option>
                                <option value="Express.js">Express.js</option>
                                <option value="Django">Django</option>
                                <option value="Flask">Flask</option>
                                <option value="Ruby on Rails">Ruby on Rails</option>
                                <option value="Laravel">Laravel</option>
                                <option value="TensorFlow">TensorFlow</option>
                                <option value="PyTorch">PyTorch</option>
                                <option value="Kubernetes">Kubernetes</option>
                                <option value="Docker">Docker</option>
                                <option value="Jenkins">Jenkins</option>
                                <option value="AWS">AWS (Amazon Web Services)</option>
                                <option value="Azure">Azure</option>
                                <option value="Google Cloud">Google Cloud</option>
                                <option value="DevOps">DevOps</option>
                                <option value="Blockchain">Blockchain</option>
                                <option value="Machine Learning">Machine Learning</option>
                                <option value="Artificial Intelligence">Artificial Intelligence</option>
                                <option value="Cybersecurity">Cybersecurity</option>
                                <option value="CISSP">CISSP (Certified Information Systems Security Professional)</option>
                                <option value="CompTIA Security+">CompTIA Security+</option>
                                <option value="CEH">Certified Ethical Hacker (CEH)</option>
                                <option value="Scrum">Scrum</option>
                                <option value="Agile">Agile</option>
                                <option value="Kanban">Kanban</option>
                            </select>
                        </div>

                        <button type="submit" class="btn btn-primary" aria-label="Submit job posting form">Submit</button>

                    </form>

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
