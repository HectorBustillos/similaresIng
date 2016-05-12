
package clases;

import java.sql.SQLException;

public class DatosSucursales {
  
    private Conexion cnn;
    private Sucursales suc;
    
    public DatosSucursales(Conexion cnn){
        this.cnn = cnn;
    }

    public void insertSucursales(Sucursales suc, int opcion) throws SQLException{
        this.suc = suc;

        if(opcion == 1){
            cnn.ejecutarSQL(
                        "insert into Sucursales values("
                        + suc.getIdsucursales()
                        +", "+ suc.getNumempleado()
                        +", '"+ suc.getTelefono()+ "'"
                        +", '"+ suc.getDireccion()+ "')"
            );
        }else if(opcion == 2){
            cnn.ejecutarSQL("delete from Sucursales");    
            cnn.ejecutarSQL("alter table Sucursales AUTO_INCREMENT = 1"); 
        }
    }
}
