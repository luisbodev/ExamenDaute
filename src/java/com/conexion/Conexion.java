package com.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 * Nombre de la clase: Conexion
 * Fecha: 30-10-2020
 * Version: 1.0
 * Copyright: luis345, ismael-08.jpg
 * @author luisbonilla, ismael casttilo
 */
public class Conexion {
    private Connection con;

    public Connection getCon() {
        return con;
    }

    public boolean conectar() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BonillaCastillo?zeroDateTimeBehavior=convertToNull [root on Default schema]",
                    "root", "");
            return true;
        } catch (SQLException | ClassNotFoundException e) {
            JOptionPane.showMessageDialog(null,
                    "Error al conectar" + e.getMessage());
            return false;
        }

    }

    public boolean desconectar() {
        try {
            if (con != null) {
                if (con.isClosed() == false) {
                    con.close();
                }
            }
            return true;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null,
                    "Error al desconectar" + e.getMessage());
            return false;
        }
    }
}
