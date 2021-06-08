package com.kkfh.user;

import com.kkfh.user.model.UserVO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
@Mapper
public interface UserMapper {

    List<UserVO> selUser();
}
