/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author AS
 */
public class product {
    private int id;
    private String name;
    private String image;
    private Double price;
    private String describe;
    private category category;
    public product() {
    }

    public product(int id, String name, String image, Double price, String describe, category category) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.describe = describe;
        this.category = category;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public category getCategory() {
        return category;
    }

    public void setCategory(category category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "product{" + "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", describe=" + describe + ", category=" + category + '}';
    }

    
    
    
}
