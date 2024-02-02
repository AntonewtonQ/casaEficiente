/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.home.entities;

import java.sql.*;

/**
 *
 * @author antonewton
 */
public class User
{

    private int id;
    private String nome;
    private String email;
    private String pass;
    private Timestamp dateTime;
    private String about;

    public User()
    {
    }

    public User(String nome, String email, String pass, String about)
    {
        this.nome = nome;
        this.email = email;
        this.pass = pass;
        this.about = about;
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getNome()
    {
        return nome;
    }

    public void setNome(String nome)
    {
        this.nome = nome;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public String getPass()
    {
        return pass;
    }

    public void setPass(String pass)
    {
        this.pass = pass;
    }

    public Timestamp getDateTime()
    {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime)
    {
        this.dateTime = dateTime;
    }

    public String getAbout()
    {
        return about;
    }

    public void setAbout(String about)
    {
        this.about = about;
    }

}
