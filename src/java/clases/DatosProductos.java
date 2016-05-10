
package clases;

import java.sql.SQLException;


public class DatosProductos {
    
    private Conexion cnn;
    private Productos pro;
    
    public DatosProductos(Conexion cnn){
        this.cnn = cnn;
    }
    
    public void insertProductos(Productos pro) throws SQLException{
        this.pro = pro;
        
        cnn.ejecutarSQL(
                        "insert into Productos values("
                        + pro.getIdproducto()
                        +", '"+ pro.getDescripcion() +"'"
                        +", "+ pro.getPrecio() 
                        +", "+ pro.getCantidad() +")");
        
        
    }
    
}
