
package clases;

import java.sql.SQLException;

public class DatosVentasProd {
    
    private Conexion cnn;
    private VentasProd ventasP;
    
 public DatosVentasProd(Conexion cnn){
     this.cnn = cnn;
 }
    
 public void insertVentasProd(VentasProd ventasP) throws SQLException{
     this.ventasP = ventasP;
     
     cnn.ejecutarSQL(
                        "insert into VentaProduc values("
                        + ventasP.getIdventa()
                        +", "+ ventasP.getIdproducto()+ ")");
     
 }
}
