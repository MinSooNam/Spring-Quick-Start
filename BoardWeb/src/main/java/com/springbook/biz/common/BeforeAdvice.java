package com.springbook.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

/**
 * Created by Namsoo on 2017. 11. 4..
 */
@Service
@Aspect
public class BeforeAdvice {
    @Before("PointcutCommon.allPointcut()")
    public void beforeLog(JoinPoint jp) {
        String method = jp.getSignature().getName();
        Object[] args = jp.getArgs();

        System.out.println("[사전 처라]" + method + "() 메소드 ARGS 정보 :  " + args[0].toString() + "Before Advice");
    }
}
