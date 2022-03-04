/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatefulEjbClass.java to edit this template
 */
package com.ben.jspproject;

import javax.ejb.Stateful;


/**
 *
 * @author benray
 */
@Stateful
public class Stock {

    public void businessMethod(String StockName) {
    }

    private int price;
    private String name;
    public Stock() {
        name="";
    }
    public int getPrice() {
        return price;
    }
    public void setPrice(int age) {
        this.price = price;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public boolean valid()
    {
        return price!=0 && name.length()!=0;
    }
    @Override
    public String toString() {
        return "Stock{" + "name=" + name + ", price=" + price + '}';
    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
}
