/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.home.helper;

import java.sql.*;

/**
 *
 * @author antonewton
 */
public class ConnectionProv
{

    public static Connection getConnection()
    {

        Connection con = null;

        try
        {

            //DRIVER CLASS LOAD
            Class.forName("com.mysql.cj.jdbc.Driver");

            //CREATE CONNECTION
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/home?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "H4vaiana$&Cabana$");
        }
        catch (Exception e)
        {
            System.out.println(e.getMessage());
        }
        return con;

    }

}
