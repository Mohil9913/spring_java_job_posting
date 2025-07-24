package org.mohil.jobapp.repository;

import org.mohil.jobapp.model.JobPost;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Repository
public class JobRepo {

    List<JobPost> jobs = new ArrayList<>(Arrays.asList(
            new JobPost(1, "Java Devloper", "Must have good experience in core java backend", 2, Arrays.asList("Java", "Spring")),
            new JobPost(2, "Backend Engineer", "Design and develop RESTful APIs and microservices", 3, Arrays.asList("Node.js", "Express.js", "MongoDB")),
            new JobPost(3, "Full Stack Developer", "Work on both frontend and backend development", 4, Arrays.asList("Angular", "Spring Boot", "MySQL")),
            new JobPost(4, "Cloud Architect", "Design scalable cloud infrastructure solutions", 5, Arrays.asList("AWS", "Azure", "Docker", "Terraform")),
            new JobPost(5, "QA Engineer", "Automate test cases and ensure product quality", 2, Arrays.asList("Selenium", "JUnit", "Cucumber")),
            new JobPost(6, "UI/UX Designer", "Design engaging and user-friendly application interfaces", 3, Arrays.asList("Figma", "Adobe XD", "Sketch")),
            new JobPost(7, "Machine Learning Engineer", "Develop and deploy ML models", 4, Arrays.asList("Python", "PyTorch", "Scikit-learn"))
    ));

    public void addJob(JobPost jobPost){
        jobs.add(jobPost);
    }

    public List<JobPost> getAllJobs(){
        return jobs;
    }
}
