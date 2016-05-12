
package clases;

import java.sql.SQLException;
import javax.swing.JOptionPane;


public class DatosProductos {
    
    private Conexion cnn;
    private Productos pro;
    
    public DatosProductos(Conexion cnn){
        this.cnn = cnn;
    }
    
    public void insertProductos(Productos pro, int opcion) throws SQLException{
        this.pro = pro;
        
        if(opcion == 1){
            cnn.ejecutarSQL(
                        "insert into Productos values("
                        + pro.getIdproducto()
                        +", '"+ pro.getDescripcion() +"'"
                        +", "+ pro.getPrecio() 
                        +", "+ pro.getCantidad() +")"
            );  
        }else if(opcion == 2){
            cnn.ejecutarSQL("delete from productos"); 
            cnn.ejecutarSQL("alter table productos AUTO_INCREMENT = 1"); 
        }
    }   
}
