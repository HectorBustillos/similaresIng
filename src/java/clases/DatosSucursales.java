
package clases;

import java.sql.SQLException;

public class DatosSucursales {
  
    private Conexion cnn;
    private Sucursales suc;
    
public DatosSucursales(Conexion cnn){
    this.cnn = cnn;
}

public void insertSucursales(Sucursales suc) throws SQLException{
    this.suc = suc;
    
    cnn.ejecutarSQL(
                    "insert into Sucursales values("
                    + suc.getIdsucursales()
                    +", "+ suc.getNumempleado()
                    +", '"+ suc.getTelefono()+ "'"
                    +", '"+ suc.getDireccion()+ "')");
}
}
