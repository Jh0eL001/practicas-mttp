/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dba;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Mysql {
    public static Connection getConnection(){
        Connection cn = null;
        try {
            cn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/cliente", "root", "");
        } catch (SQLException e) {
            System.out.println("Error SQL: " + e.getMessage());
        } catch(Exception e1){
            System.out.println("Error General: " + e1.getMessage());
        }
        return cn;
    }
}