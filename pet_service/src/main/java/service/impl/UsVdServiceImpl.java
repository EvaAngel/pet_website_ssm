package service.impl;

import bo.ResultSet;
import mapper.UsVdMapper;
import mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import po.UsVd;
import po.User;
import service.UsVdService;

import java.util.ArrayList;
import java.util.List;

@Service
public class UsVdServiceImpl implements UsVdService {
    @Autowired
    private UsVdMapper usVdMapper;
    @Autowired
    private UserMapper userMapper;
    /*
    * 获取针对此视频的所有用户评论，并将结果返回给前端页面
    * 同时，获取实体对象的user属性
    * */
    public ResultSet queryComment(String videoId) {
        // 1 获取用户id、视频id信息
        // 2 调用mapper接口查询获取评论对象信息
        List<UsVd> usVdList = usVdMapper.queryCommentByUserAndVideo(videoId);
        // 3 根据返回的userid信息，查找返回用户的user信息，并填充UsVd
        for(UsVd usVd:usVdList){
            //这里为了测试方便，将获取结果统一改为1
            //String userid=usVd.getUser().getId();
            //根据userid获取用户信息
            User user=userMapper.getUser("1");
        }
        // 4 封装评论到list中，到result中
        ResultSet<List<UsVd>> resultSet = new ResultSet();
        if (usVdList != null) {
            List<UsVd> list = new ArrayList<UsVd>();
            for (UsVd usVd : usVdList) {
                list.add(usVd);
            }
            resultSet.setData(list);
            resultSet.setMsg("查询成功");
            resultSet.setTrue(true);
            return resultSet;
        }
        resultSet.setTrue(false);
        resultSet.setMsg("查询失败");
        return resultSet;
        // 4 结果返回
    }

    /*
    * 插入此视频的用户评论信息
    * */
    public void insertComments(UsVd usVd)
    {
        usVdMapper.insertComments(usVd);
    }
}
