package web_study_07.dto;

public class Member {
    private String name;
    private String userId;

    public Member() {
        // TODO Auto-generated constructor stub
    }

    public Member(String name, String userId) {
        this.name = name;
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return String.format("Member [name=%s, userId=%s]", name, userId);
    }

}
