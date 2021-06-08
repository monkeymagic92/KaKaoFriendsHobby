package com.kkfh.user;

import com.kkfh.user.model.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserMapper mapper;

    public List<UserVO> selUser() {
        return mapper.selUser();
    }

}
