package service.impl;

import po.User;
import bo.ResultSet;
import mapper.UserMapper;
import service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    /*
    * 实现登陆验证功能
    * */
    public ResultSet<User> isLogin(String username, String password){
        //1 mapper获取所有user用户信息
        List<User> userList=userMapper.queryUser();
        ResultSet<User> resultSet=new ResultSet();
        //2 判断逻辑信息
        if(userList!=null)
        {
            //3 登陆验证
            for (User user:userList) {
                if (username!=null&&password!=null&&username.equals(user.getUsername()) && password.equals(user.getPassword())) {
                    resultSet.setData(user);
                    resultSet.setTrue(true);
                    resultSet.setMsg("查询成功");
                    return resultSet;
                }
            }
        }
        resultSet.setMsg("查询为空");
        return resultSet;
    }
    //验证用户名密码是否成功
    public User isLogin2(String username,String password)
    {
        User user=userMapper.validUser(username,password);
        return user;
    }
}
