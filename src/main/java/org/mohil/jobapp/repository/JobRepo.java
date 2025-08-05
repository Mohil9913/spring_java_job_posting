package org.mohil.jobapp.repository;

import org.mohil.jobapp.model.JobPost;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface JobRepo extends JpaRepository<JobPost, Integer> {
    List<JobPost> findByPostProfileContainingOrPostDescContaining(String postProfile,String keyword);
}


//public void addJob(JobPost jobPost){
//    jobs.add(jobPost);
//}
//
//public List<JobPost> getAllJobs(){
//    return jobs;
//}
//
//public JobPost getJob(int postId) {
//    for (JobPost job : jobs) {
//        if (job.getPostId() == postId) {
//            return job;
//        }
//    }
//    return null;
//}
//
//public void delete(int postId) {
//    jobs.removeIf(job -> job.getPostId() == postId);
//}
//
//public void updateJob(JobPost jobPost) {
//    for (JobPost job1 : jobs) {
//        if (job1.getPostId() == jobPost.getPostId()) {
//            job1.setPostProfile(jobPost.getPostProfile());
//            job1.setPostDesc(jobPost.getPostDesc());
//            job1.setReqExperience(jobPost.getReqExperience());
//            job1.setPostTechStack(jobPost.getPostTechStack());
//        }
//    }
//}