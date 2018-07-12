package controller;

import bo.ResultSet;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import po.UsVd;
import po.User;
import po.Video;
import service.UsVdService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UsVdController {
    @Autowired
    UsVdService usVdService;

    //这里应该是返回json数据
    @RequestMapping("/get_comments")
    public void sub_comments(HttpServletRequest request, HttpServletResponse response) {
        //1 获取视频对应的videoid
        String videoid = request.getParameter("videoid");
        ResultSet resultSet = usVdService.queryComment(videoid);
        if (resultSet.isTrue()) {
            List<UsVd> list = (List<UsVd>) resultSet.getData();
        }
    }

    //这里写提交评论信息
    @RequestMapping("/sub_comments")
    @ResponseBody
    public String isSubComments(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        //捕获数据库异常，若存在异常，说明插入失败，否则插入成功。
        try {
            //获取传入参数
            String videoid = request.getParameter("videoid");
            String discuss = request.getParameter("discuss");
            User user = (User) session.getAttribute("user");
            //构造usvd实体
            UsVd usVd = new UsVd();
            Video video = new Video();
            video.setId(videoid);
            usVd.setComment(discuss);
            usVd.setUser(user);
            usVd.setVideo(video);
            //调用service层服务完成插入工作
            usVdService.insertComments(usVd);
            //调用service层服务完成查询功能
            ResultSet resultSet = usVdService.queryComment(videoid);
            List<UsVd> list = (List<UsVd>) resultSet.getData();
            //list转json
            Gson gson = new Gson();
            String result = gson.toJson(list);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return "查询失败！";
        }
    }
}
