package com.springbook.biz.user.impl;

import com.springbook.biz.user.UserService;
import com.springbook.biz.user.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Namsoo on 2017. 10. 29..
 */
@Service("userService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDAO userDAO ;

//    public void setUserDAO(UserDAO userDAO) {
//        this.userDAO = userDAO;
//    }

    public UserVO getUser(UserVO vo) {
        return userDAO.getUser(vo);
    }
}
