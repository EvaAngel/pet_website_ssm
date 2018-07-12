package mapper;

import org.apache.ibatis.annotations.Param;
import po.User;

import java.util.List;

public interface UserMapper {
    List<User> queryUser();
    User getUser(String userid);
    User validUser(@Param("username") String username, @Param("password") String password);
}
