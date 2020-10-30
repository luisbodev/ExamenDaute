package com.dao;

import com.conexion.Conexion;
import com.model.Proyecto;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 * Nombre de la clase: DaoProyecto
 * Fecha: 30-10-2020
 * Version: 1.0
 * Copyright: luis345, ismael-08.jpg
 * @author luisbonilla, ismael casttilo
 */
public class DaoProyecto extends Conexion {
    public List<Proyecto>mostrarProyectos()
    {
        List listaPro=new ArrayList();
        ResultSet res;
        try
        {
            this.conectar();
            String sql="select * from proyecto";
            PreparedStatement pre=this.getCon().prepareStatement(sql);
            res=pre.executeQuery();
            while(res.next())
            {
                Proyecto pro=new Proyecto();
                pro.setCodigoProyecto(res.getInt("codigoProyecto"));
                pro.setNombre(res.getString("nombre"));
                pro.setUbicacion("ubicacion");
                listaPro.add(pro);
            }
        }
        catch (Exception e)
        {
            JOptionPane.showMessageDialog(null,"Error al mostrar "+
                    e.getMessage());
        }
        finally
        {
            this.desconectar();
        }
        return listaPro;
    }
}
