package com.product;

import java.math.BigDecimal;

public class Product {
    private int landid;
    private String sellerName;
    private String location;
    private String email;
    private BigDecimal price;  // model
    private boolean active;

    // Constructors
    public Product() {}

    public Product(int landid, String sellerName, String location, String email, BigDecimal price, boolean active) {
        this.landid = landid;
        this.sellerName = sellerName;
        this.location = location;
        this.email = email;
        this.price = price;
        this.active = active;
    }

    // Getters and Setters
    public int getLandid() {
        return landid;
    }

    public void setLandid(int landid) {
        this.landid = landid;
    }

    public String getSellerName() {
        return sellerName;
    }

    public void setSellerName(String sellerName) {
        this.sellerName = sellerName;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
}
