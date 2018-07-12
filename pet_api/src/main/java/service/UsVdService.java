package service;

import bo.ResultSet;
import po.UsVd;

public interface UsVdService {
    public ResultSet queryComment(String videoId);
    public void insertComments(UsVd usVd);
}
