package mapper;

import org.apache.ibatis.annotations.Param;
import po.UsVd;

import java.util.List;

public interface UsVdMapper {
    public List<UsVd> queryCommentByUserAndVideo(String videoId);

    public void insertComments(UsVd usVd);
}
