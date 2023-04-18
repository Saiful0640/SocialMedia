package com.boot.demo.Login.LoginModel;

import javax.persistence.*;
import java.util.Arrays;

@Entity
@Table(name ="sginup")
public class Sginup {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  Long id;
    @Column(name ="name")
    private String name;
    @Column(name="email")
    private String email;
    @Column(name = "password")
    private String password;
    @Column(name = "uimage")
    private String image;
    @Column(name="cimage")
    private  String cImage;


    public String getcImage() {
        return cImage;
    }

    public void setcImage(String cImage) {
        this.cImage = cImage;
    }

    public Sginup() {
    }

    public Sginup(Long id, String name, String email, String password, String image, String cImage) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.image = image;
        this.cImage = cImage;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Sginup{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", image='" + image + '\'' +
                ", cImage='" + cImage + '\'' +
                '}';
    }
}
