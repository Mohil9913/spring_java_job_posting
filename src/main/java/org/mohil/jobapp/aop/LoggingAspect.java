package org.mohil.jobapp.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAspect {
    private static final Logger log = LoggerFactory.getLogger(LoggingAspect.class);

    //return type classname.method names(args)
    @Before("execution(* org.mohil.jobapp.service.JobService.getJob(..)) || " +
            "execution(* org.mohil.jobapp.service.JobService.getAllJobs(..)) || " +
            "execution(* org.mohil.jobapp.service.JobService.updateJob(..))")
    public void logMethodCall(JoinPoint jp) {
        log.info("Method Call " + jp.getSignature().getName());
    }

    @After("execution(* org.mohil.jobapp.service.JobService.getJob(..)) || " +
            "execution(* org.mohil.jobapp.service.JobService.getAllJobs(..)) || " +
            "execution(* org.mohil.jobapp.service.JobService.updateJob(..))")
    public void logMethodExecuted(JoinPoint jp) {
        log.info("Method Executed " + jp.getSignature().getName());
    }

    @AfterThrowing("execution(* org.mohil.jobapp.service.JobService.getJob(..)) || " +
            "execution(* org.mohil.jobapp.service.JobService.getAllJobs(..)) || " +
            "execution(* org.mohil.jobapp.service.JobService.updateJob(..))")
    public void logMethodCrashed(JoinPoint jp) {
        log.info("Method Crashed " + jp.getSignature().getName());
    }
}
