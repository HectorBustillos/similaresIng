 
package clases;

import java.sql.SQLException;

public class DatosClientes {
 
    private Conexion cnn;
    private Clientes cl;

public DatosClientes(Conexion cnn){
        this.cnn = cnn;
}    
public void insertClientes(Clientes cl)  throws SQLException{
    this.cl = cl;
    
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
    
    
    
    
    
    
}   

}
