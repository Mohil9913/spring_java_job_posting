package org.mohil.jobapp.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class PerformanceMonitorAspect {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Around("execution(* org.mohil.jobapp.service.JobService.getAllJobs(..))")
    public Object monitorTime(ProceedingJoinPoint jp) throws Throwable {

        long start = System.currentTimeMillis();

        Object obj = jp.proceed();

        long end = System.currentTimeMillis();

        logger.info("Time taken to fetch all jobs: " + (end - start) + "ms");

        return obj;
    }
}
