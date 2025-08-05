package org.mohil.jobapp.service;

import org.mohil.jobapp.model.JobPost;
import org.mohil.jobapp.repository.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Service
public class JobService {

    @Autowired
    private JobRepo jobRepo;

    public void addJob(JobPost jobPost){
        jobRepo.save(jobPost);
    }

    public List<JobPost> getAllJobs(){
        return jobRepo.findAll();
    }

    public JobPost getJob(int postId) {
        return jobRepo.findById(postId).orElse(new JobPost());
    }

    public List<JobPost> search(String keyword) {
        return jobRepo.findByPostProfileContainingOrPostDescContaining(keyword, keyword);
    }

    public void delete(int postId) {
        jobRepo.deleteById(postId);
    }

    public void updateJob(JobPost jobPost) {
        jobRepo.save(jobPost);
    }

    public void loadJobs() {
        List<JobPost> jobs = new ArrayList<>(Arrays.asList(
                new JobPost(1, "Java Devloper", "Must have good experience in core java backend", 2, Arrays.asList("Java", "Spring")),
                new JobPost(2, "Backend Engineer", "Design and develop RESTful APIs and microservices", 3, Arrays.asList("Node.js", "Express.js", "MongoDB")),
                new JobPost(3, "Full Stack Developer", "Work on both frontend and backend development", 4, Arrays.asList("Angular", "Spring Boot", "MySQL")),
                new JobPost(4, "Cloud Architect", "Design scalable cloud infrastructure solutions", 5, Arrays.asList("AWS", "Azure", "Docker", "Terraform")),
                new JobPost(5, "QA Engineer", "Automate test cases and ensure product quality", 2, Arrays.asList("Selenium", "JUnit", "Cucumber")),
                new JobPost(6, "UI/UX Designer", "Design engaging and user-friendly application interfaces", 3, Arrays.asList("Figma", "Adobe XD", "Sketch")),
                new JobPost(7, "Machine Learning Engineer", "Develop and deploy ML models", 4, Arrays.asList("Python", "PyTorch", "Scikit-learn"))
        ));

        jobRepo.saveAll(jobs);
    }
}
