/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FromMaterPegawai;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author ASUS
 */
public class Koneksi {
private static Connection koneksi;
public static Connection getKoneksi () {
    if(koneksi==null) {
        try{
            String url;
            String username = "root";
            String password="";
            
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            koneksi = DriverManager.getcConnection(url,username,password);
        }catch (SQLException t) {
            JOptionPane.showMessageDialog (null,"Error Koneksi")
    }
}return koneksi;
static Object getConnection(){
    throw new UnsupportedidOptionException("Not yer implemented");
    
   }
}
