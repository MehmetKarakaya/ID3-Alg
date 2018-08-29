
package ıd3_alg;



import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
public class baglantiYap {

    public Connection con;
    
    private String url="jdbc:mysql://localhost:3306/"; //bu kalıptır
    private String driver="com.mysql.jdbc.Driver";
    private String dbname="yapayzekaodev1"; 
    private String username="root";
    private String password="lenovog560";
    
      
       public void baglan()
    {
        try {
            Class.forName(driver).newInstance();
            con= DriverManager.getConnection(url+dbname,username,password);
            //JOptionPane.showMessageDialog(null, "Veri Tabanı Bağlantısı Gerçekleştirildihjghjg.");
        } catch (Exception ex) {
            Logger.getLogger(baglantiYap.class.getName()).log(Level.SEVERE, null, ex);
            //JOptionPane.showMessageDialog(null, "Veri Tabanı Bağlanırken Hata Oluştu :"+ex);
        }
    }
    
    
}
 