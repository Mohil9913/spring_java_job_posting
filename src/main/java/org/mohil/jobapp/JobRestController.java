package org.mohil.jobapp;

import org.mohil.jobapp.model.JobPost;
import org.mohil.jobapp.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:3000")
public class JobRestController {

    @Autowired
    private JobService jobService;

    @GetMapping(value = "jobPosts", produces = {"application/json"})
    public List<JobPost> getAllJobs(){
        return jobService.getAllJobs();
    }

    @GetMapping(value = "jobPost/{postId}", produces = {"application/xml"})
    public JobPost getJob(@PathVariable("postId") int postId){
        return jobService.getJob(postId);
    }

    @PostMapping("jobPost")
    public void addJob(@RequestBody JobPost jobPost){
        jobService.addJob(jobPost);
    }

    @GetMapping("jobPosts/keyword/{keyword}")
    public List<JobPost> searchByKeyword(@PathVariable("keyword") String keyword){
        return jobService.search(keyword);
    }

    @DeleteMapping("jobPost/{postId}")
    public String deleteJob(@PathVariable("postId") int postId){
        jobService.delete(postId);
        return "Job Deleted Successfully!";
    }

    @PutMapping("jobPost")
    public JobPost updateJob(@RequestBody JobPost jobPost){
        jobService.updateJob(jobPost);
        return jobService.getJob(jobPost.getPostId());
    }

    @GetMapping("load")
    public String loadData(){
        jobService.loadJobs();
        return "Success!";
    }
}
