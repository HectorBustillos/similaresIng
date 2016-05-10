package clases;

import java.sql.SQLException;

public class DatosConsultas {
    
    private Conexion cnn;
    private Consultas cons;
    
public DatosConsultas(Conexion cnn){
    this.cnn = cnn;
}
public void insertConsultas(Consultas cons) throws SQLException{
    this.cons = cons;
    
//    no jala el insert por los tipos de datos
    
    cnn.ejecutarSQL(
                    "insert into Consultas values("
                    + cons.getNumeroConsulta()
                   +", "+ cons.getIdcliente() 
                   +", "+ cons.getIddoctor()
                   +", '"+ cons.getFecha() +"'"
                   +", '"+ cons.getDiagnostico() +"')");
    
    }

}
