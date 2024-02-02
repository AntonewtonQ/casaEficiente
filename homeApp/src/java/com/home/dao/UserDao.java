/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.home.dao;

import com.home.entities.User;
import java.sql.*;

/**
 *
 * @author antonewton
 */
public class UserDao
{

    private Connection con;

    public UserDao()
    {
    }

    public UserDao(Connection con)
    {
        this.con = con;
    }

    //method to insert user to dataBase;
    public boolean saveUser(User user)
    {
        boolean verifica = false;

        try
        {
            //user database
            String query = "insert into home.user(nome,email,pass,about) values(?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getNome());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPass());
            pstmt.setString(4, user.getAbout());

            pstmt.executeUpdate();
            verifica = true;
        }
        catch (Exception e)
        {
            System.out.println(e.getMessage());
        }
        return verifica;
    }
}
