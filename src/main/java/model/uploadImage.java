package model;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class uploadImage {
    private  int id;
    private String linkImage;

    public uploadImage() {
    }

    public uploadImage(int id, String linkImage) {
        this.id = id;
        this.linkImage = linkImage;
    }

    @Id //khóa chính
    @GeneratedValue //auto number
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLinkImage() {
        return linkImage;
    }

    public void setLinkImage(String linkImage) {
        this.linkImage = linkImage;
    }
}
