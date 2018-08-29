/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ıd3_alg;
import java.awt.List;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;
import java.math.BigInteger;
import java.util.ArrayList;
/**
 *
 * @author Ersn
 */

public class veriTabani {
    
    private int id;
    private String ates;
    private String oksuruk;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAtes() {
        return ates;
    }

    public void setAtes(String ates) {
        this.ates = ates;
    }

    public String getOksuruk() {
        return oksuruk;
    }

    public void setOksuruk(String oksuruk) {
        this.oksuruk = oksuruk;
    }

    public String getAgri() {
        return agri;
    }

    public void setAgri(String agri) {
        this.agri = agri;
    }

    public String getHalsizlik() {
        return halsizlik;
    }

    public void setHalsizlik(String halsizlik) {
        this.halsizlik = halsizlik;
    }

    public String getHasta() {
        if(hasta == null || hasta == "")
            return  "";
        return hasta;
    }

    public void setHasta(String hasta) {
        this.hasta = hasta;
    }
    private String agri;
    private String halsizlik;
    private String hasta;
    
    
    
    public void veriEkle( String ates1, String oksuruk1, String agri1, String halsizlik1, String hasta1)throws SQLException{
        String mesaj="";
        try
        {
            baglantiYap vb=new baglantiYap();
            vb.baglan();   
            //ResultSet rs;  //butoon işlemini yaptı
            String sorgu="insert into veriler(ates,oksuruk,agri,halsizlik,hasta) values (?,?,?,?,?);";
            
            PreparedStatement ps= vb.con.prepareStatement(sorgu);
            
            ps.setString(1, ates1);
            ps.setString(2, oksuruk1);
            ps.setString(3, agri1);
            ps.setString(4, halsizlik1);
            ps.setString(5, hasta1);
            ps.execute();
            mesaj="Veriler Başarıyla Eklendi.";
            JOptionPane.showMessageDialog(null, mesaj);
        }
        catch(Exception ex)
        {
                    JOptionPane.showMessageDialog(null, ex);
                    
        }
    }
   public ArrayList<veriTabani> verileriCek() throws SQLException
    {
      
        baglantiYap vb=new baglantiYap();
        vb.baglan();
        String sorgu;
            sorgu="select * from veriler";
        ArrayList<veriTabani> liste = new ArrayList<veriTabani>();
        
        PreparedStatement ps=vb.con.prepareStatement(sorgu);
        ResultSet rs=ps.executeQuery();
        
        try 
        {
            while (rs.next()) {
                    //JOptionPane.showMessageDialog(null, "geliyor");
                    veriTabani vt=new veriTabani();
                    vt.setAtes(rs.getString("ates"));
                    vt.setOksuruk(rs.getString("oksuruk"));
                    vt.setAgri(rs.getString("agri"));
                    vt.setHalsizlik(rs.getString("halsizlik"));
                    vt.setHasta(rs.getString("hasta"));
                    liste.add(vt);                    
                    }
        }
            catch(Exception ex)
            {
                    JOptionPane.showMessageDialog(null, ex);
                    
            }
        
         return liste;
    }
   
}
