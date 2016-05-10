
package clases;

import java.sql.SQLException;


public class DatosDoctores {
    
    private Conexion cnn;
    private Doctores doc;
    
public DatosDoctores(Conexion cnn){
    this.cnn = cnn;
}

public void insertDoctores(Doctores doc) throws SQLException{
    this.doc = doc;
    
    cnn.ejecutarSQL(
                    "insert into Doctores values("
                    +doc.getIddoctores()
                    +", '"+ doc.getNombre() +"'"
                    +", '"+ doc.getApeidoPaterno() +"'"
                    +", '"+ doc.getApeidoMaterno() +"'"
                    +", '"+ doc.getTelefono() +"'"
                    +", '"+ doc.getDireccion() +"')");
}

}
