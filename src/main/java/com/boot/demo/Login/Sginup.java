package com.boot.demo.Login;

import javax.persistence.*;
import java.util.Arrays;

@Entity
@Table(name ="sginup")
public class Sginup {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private  long id;
    @Column(name ="name")
    private String name;
    @Column(name="email")
    private String email;
    @Column(name = "password")
    private String password;

    @Lob
    @Column(name = "uimage", columnDefinition="BLOB")
    private byte[] image;


    public Sginup() {
    }

    public Sginup(long id, String name, String email, String password) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
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

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Sginup{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", image=" + Arrays.toString(image) +
                '}';
    }
}
