package po;

public class UsVd {
    private Integer id;
    private String comment;
    private String thumb_up;
    private User user;
    private Video video;
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getThumb_up() {
        return thumb_up;
    }

    public void setThumb_up(String thumb_up) {
        this.thumb_up = thumb_up;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Video getVideo() {
        return video;
    }

    public void setVideo(Video video) {
        this.video = video;
    }
}
