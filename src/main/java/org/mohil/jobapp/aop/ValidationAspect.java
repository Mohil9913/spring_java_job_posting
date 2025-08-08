package org.mohil.jobapp.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class ValidationAspect {

    private static final Logger log = LoggerFactory.getLogger(ValidationAspect.class);

    @Around("execution(* org.mohil.jobapp.service.JobService.getJob(..)) && args(postId)")
    public Object validateAndUpdate(ProceedingJoinPoint pjp, int postId) throws Throwable {

        if(postId < 0) {
            log.error("postId is negative " + postId);
            postId = -postId;
            log.info("postId is changed to " + postId);
        }

        return pjp.proceed(new Object[]{postId});
    }
}
