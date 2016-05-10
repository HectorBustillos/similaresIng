
package clases;

import java.sql.SQLException;

public class DatosConsultas {
    
    private Conexion cnn;
    private Consultas cons;
    
public DatosConsultas(Consultas cons){
    this.cons = cons;
}

public void insertConsultas(Consultas cons) throws SQLException{
    this.cons = cons;
    
    cnn.ejecutarSQL(
                    "insert into values("
                    + cons.getNumeroConsulta() 
                   +", "+ cons.getIdcliente() 
                   +", "+ cons.getIddoctor()
                   +", '"+ cons.getFecha() +"'"
                   +", '"+ cons.getDiagnostico() +"')");
    
}

}
