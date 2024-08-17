package com.project.flutter_exam.model;

public class Place {
    private int id;
    private String name;
    private String picture;
    private int rating;

    public Place(int id, String name, String picture, int rating) {
        this.id = id;
        this.name = name;
        this.picture = picture;
        this.rating = rating;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
}
