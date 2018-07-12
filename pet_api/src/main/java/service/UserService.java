package service;

import bo.ResultSet;
import po.User;

import java.util.List;

public interface UserService {
    public ResultSet isLogin(String username, String password);
    public User isLogin2(String username, String password);

}
