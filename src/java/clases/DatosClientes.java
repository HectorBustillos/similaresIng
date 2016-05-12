 
package clases;

import java.sql.SQLException;

public class DatosClientes {
 
    private Conexion cnn;
    private Clientes cl;

public DatosClientes(Conexion cnn){
    this.cnn = cnn;
}    
public void insertClientes(Clientes cl, int opcion)  throws SQLException{
    this.cl = cl;
    
    if(opcion == 1){
        cnn.ejecutarSQL(
                    "insert into clientes values("
                    + cl.getIdcliente()
                    + ", '"+ cl.getNombre() +"'"
                    + ", '"+ cl.getApeidoPaterno() +"'"
                    + ", '"+ cl.getApeidoMaterno() +"'"
                    + ", '"+ cl.getTelefono() +"'"
                    + ", '"+ cl.getDireccion() +"'"
                    + ", '"+ cl.getCodigoPostal() +"'"
                    + ", '"+ cl.getCiudad() +"'"
                    + ", '"+ cl.getEstado() +"')");
        }else if(opcion == 2){
            cnn.ejecutarSQL("delete from Clientes");
            cnn.ejecutarSQL("alter table clientes AUTO_INCREMENT = 1"); 

        }  
    }

}
