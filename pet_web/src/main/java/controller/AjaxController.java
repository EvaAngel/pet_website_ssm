package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import utils.GetMessageCode;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

@Controller
public class AjaxController {
    private static Map<String, Integer> map = new HashMap();

    @RequestMapping(value = "/sendsms", method = RequestMethod.POST)
    public void sendSms(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String telephone = request.getParameter("telephone");
        String code = GetMessageCode.getCode(telephone);
        if (code == "验证码发送失败") {
            System.out.println("验证码发送失败");
        } else {
            //把验证码返回到前端
            System.out.println(code);
            response.getWriter().print(code);
        }
    }

    //增加判断逻辑，使每个ip限制发送次数。
    public boolean isSend(String ip, HttpServletRequest request) {
        String remoteIp = request.getRemoteAddr();
        Calendar c = Calendar.getInstance();
        //这里没想出来怎么判断不是在同一天？？？？
        int day = c.get(Calendar.DAY_OF_WEEK_IN_MONTH);
        int temp = day;
        //做一个验证功能，若参数等于5，则请求结束  同时还需要一个功能，当天限制
            if (map.containsKey(ip)) {
                int count = map.get(ip);
                if (count < 5) {
                    count++;
                    return true;
                } else
                    return false;
            } else {
                map.put(ip, 1);
                return true;
            }

    }
}
