
package clases;

import java.sql.SQLException;


public class DatosDoctores {
    
    private Conexion cnn;
    private Doctores doc;
    
    public DatosDoctores(Conexion cnn){
        this.cnn = cnn;
    }

    public void insertDoctores(Doctores doc, int opcion) throws SQLException{
        this.doc = doc;

        if(opcion == 1){
            cnn.ejecutarSQL(
                        "insert into Doctores values("
                        +doc.getIddoctores()
                        +", '"+ doc.getNombre() +"'"
                        +", '"+ doc.getApeidoPaterno() +"'"
                        +", '"+ doc.getApeidoMaterno() +"'"
                        +", '"+ doc.getTelefono() +"'"
                        +", '"+ doc.getDireccion() +"'"
                        +", '"+ doc.getIdEmpleado() +"')"
            );
        }else if(opcion == 2){
            cnn.ejecutarSQL("delete from Doctores");    
            cnn.ejecutarSQL("alter table Doctores AUTO_INCREMENT = 1"); 
        }
    }

}
